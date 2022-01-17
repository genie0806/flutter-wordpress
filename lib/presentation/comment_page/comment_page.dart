import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:virtue_test/presentation/comment_page/comment_page_event.dart';
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
  void initState() {
    super.initState();
    Future.microtask(() {
      final viewModel = context.read<CommentPageViewModel>();
      context.read<CommentPageViewModel>().fetchCommentPage(widget.postId);
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
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
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
        body: Stack(children: [
          Column(
            children: [
              Expanded(
                child: ListView(children: [
                  if (model.isEmpty) ...{
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),
                    const Center(
                        child: Text(
                      '첫번째 댓글을 남겨주세요',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ))
                  } else ...{
                    ...model.map(
                      (e) => CommentFormField(
                        model: e,
                      ),
                    )
                  },
                ]),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Divider(
                  thickness: 0.5,
                  color: Colors.black12,
                  indent: 0,
                  endIndent: 0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: TextFormField(
                          initialValue: "",
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (onValidateVal) {
                            if (onValidateVal!.trim().isEmpty) {
                              return '댓글을 입력해주세요';
                            }
                            return null;
                          },
                          onChanged: (val) {
                            viewModel.onEvent(StoreContent(val));
                          },
                          cursorColor: const Color(0xff405376),
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                              isDense: true,
                              contentPadding:
                                  const EdgeInsets.fromLTRB(15, 29, 0, 0),
                              hintText: '댓글을 입력해주세요',
                              hintStyle: TextStyle(
                                  fontSize: 16, color: Colors.grey.shade400),
                              enabledBorder: activeInputBorder(),
                              focusedBorder: activeInputBorder(),
                              errorBorder: errorInputBorder(),
                              focusedErrorBorder: errorInputBorder(),
                              errorStyle: const TextStyle(
                                  color: Colors.redAccent, fontSize: 13),
                              suffixIcon: TextButton(
                                child: const Text(
                                  '등록',
                                  style: TextStyle(
                                      color: Color(0xff405479),
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {},
                              )),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
