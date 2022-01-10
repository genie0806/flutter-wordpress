import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:virtue_test/presentation/comment_page/comment_page_view_model.dart';
import 'package:virtue_test/presentation/comment_page/components/comment_form_filed.dart';
import 'package:virtue_test/presentation/comment_page/components/comment_text_form_field.dart';

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
  //void initState() {
  //  super.initState();
  //  Future.microtask(() {
  //    final viewModel = context.read<CommentPageViewModel>();
  //    context.read<CommentPageViewModel>().fetchCommentPage(widget.postId);
  //    streamSubscription = viewModel.eventStream.listen((event) {
  //      event.when(showToast: (String message) {
  //        return '오류입니다';
  //      });
  //    });
  //  });
  //}

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
          elevation: 0.7,
          title: Row(
            children: [
              IconButton(
                  padding: const EdgeInsets.only(top: 5),
                  onPressed: () async {
                    Navigator.pop(
                      context,
                    );
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
                padding: const EdgeInsets.only(left: 98),
                child: Text(
                  '댓글 ' + model.length.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                ),
              )
            ],
          ),
        ),
        body: ListView(
          children: [
            if (model.isEmpty) ...{
              const Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              const Center(
                  child: Text(
                '첫번째 댓글을 남겨주세요',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ))
            } else ...{
              ...model.map(
                (e) => CommentFormField(
                  model: e,
                ),
              )
            },

            //TextFormField(
            //        initialValue: "",
            //        autovalidateMode: AutovalidateMode.onUserInteraction,
            //        validator: (onValidateVal) {
            //          if (onValidateVal!.trim().isEmpty) {
            //            return '이메일을 입력해주세요';
            //          }
            //          return null;
            //        },
            //        onChanged: (val) {
            //          viewModel.onEvent(StoreUsername(val));
            //        },
            //        onSaved: (value) {
            //          viewModel.onEvent(StoreUsername(value.toString().trim()));
            //        },
            //        cursorColor: const Color(0xff405376),
            //        style: const TextStyle(
            //          fontSize: 16,
            //          color: Colors.black,
            //        ),
            //        decoration: textInputDeco('댓글을 입력해주세요'),
            //      )
          ],
        ));
  }
}
