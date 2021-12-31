import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

import 'package:virtue_test/presentation/comment_page/comment_page_view_model.dart';

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
      final viewModel = context.read<CommentPageViewModel>();
      streamSubscription = viewModel.eventStream.listen((event) {
        event.when(showToast: (String message) {});
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
    final model =
        viewModel.state.model.where((e) => e.id == widget.postId).first;
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
                onPressed: () {},
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
            const Padding(
              padding: EdgeInsets.only(left: 100),
              child: Text(
                '댓글',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 16,
                      child: ClipOval(
                        child: Image.network(
                          model.avatar ?? "",
                          //fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              model.author ?? "",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 7),
                              child: Text(
                                model.content ?? "",
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 14),
                                maxLines: 10,
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
