import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:virtue_test/presentation/comment_page/comment_page_view_model.dart';
import 'package:virtue_test/presentation/comment_page/components/comment_form_filed.dart';

class CommentPage extends StatefulWidget {
  final int postId;
  const CommentPage({
    Key? key,
    required this.postId,
  }) : super(key: key);

  @override
  _CommentPageState createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  StreamSubscription? streamSubscription;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<CommentPageViewModel>().fetchCommentPage(widget.postId);
      final viewModel = context.read<CommentPageViewModel>();
      streamSubscription = viewModel.eventStream.listen((event) {
        event.when(showToast: (String message) {
          return '오류입니다';
        });
      });
    });
  }

  @override
  void dispose() {
    streamSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CommentPageViewModel>();
    final model = viewModel.state.model;
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 4,
          toolbarHeight: 44,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          //shadowColor: const Color(0xffFEFEFE).withAlpha(1),
          elevation: 0.7,
          title: Row(
            children: [
              IconButton(
                  padding: const EdgeInsets.only(top: 5),
                  onPressed: () async {
                    Navigator.pop(context);
                    await viewModel.refreshList(widget.postId);
                  },
                  icon: Image.asset(
                    'assets/noun-arrow-left-1476218.png',
                    width: 26,
                    height: 26,
                    color: const Color(0xff7d7d7d),
                  )),
              IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(minWidth: 37),
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/icons8-home-100.png',
                    width: 30,
                    height: 30,
                    color: const Color(0xff7d7d7d),
                  )),
              Padding(
                padding: EdgeInsets.only(left: 98),
                child: Text(
                  '댓글 ' + model.length.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        ),
        body: Column(
          children: [
            ...model.map(
              (e) => CommentFormField(
                model: e,
              ),
            )
          ],
        ));
  }
}
