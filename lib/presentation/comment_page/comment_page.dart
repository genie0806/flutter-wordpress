import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/src/provider.dart';
import 'package:virtue_test/presentation/comment_page/comment_page_event.dart';
import 'package:virtue_test/presentation/comment_page/comment_page_view_model.dart';
import 'package:virtue_test/presentation/comment_page/components/comment_form_filed.dart';
import 'package:virtue_test/presentation/comment_page/components/comment_text_form_field.dart';
import 'package:virtue_test/presentation/user_me_data/user_me_view_model.dart';

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
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
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
        }, registerErrorToast: (String message) {
          Fluttertoast.showToast(
                  msg: "댓글 등록 성공",
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: const Color(0xff6E6E6E),
                  fontSize: 20,
                  toastLength: Toast.LENGTH_SHORT)
              .whenComplete(() {
            viewModel.refreshList(widget.postId);
          });
        }, registerSuccessToast: (String message) {
          Fluttertoast.showToast(
              msg: "댓글 등록 실패",
              gravity: ToastGravity.BOTTOM,
              backgroundColor: const Color(0xff6E6E6E),
              fontSize: 20,
              toastLength: Toast.LENGTH_SHORT);
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
    final state = viewModel.state;
    final model = viewModel.state.model;
    final profileViewModel = context.watch<UserMeViewModel>();
    bool validateAndSave() {
      final form = globalKey.currentState;
      if (form?.validate() ?? true) {
        form?.save();
        return true;
      } else {
        return false;
      }
    }

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
                  if (model.length <= 0) ...{
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),
                    const Center(
                      child: Text(
                        '첫번째 댓글을 남겨주세요',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    )
                  } else if (model.isNotEmpty) ...{
                    ...model.map(
                      (e) => CommentFormField(
                        model: e,
                      ),
                    )
                  } else ...{
                    const SizedBox(
                      height: 10,
                      width: 10,
                      child: Center(child: CircularProgressIndicator()),
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
                    Form(
                      key: globalKey,
                      child: Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: TextFormField(
                            initialValue: "",
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (onValidateVal) {
                              if (onValidateVal!.trim().isEmpty) {
                                return null;
                              }
                              return null;
                            },
                            onChanged: (val) {
                              viewModel.onEvent(StoreContent(val));
                              viewModel.onEvent(StoreEmail(
                                  profileViewModel.state.model?.email ?? ''));
                              viewModel.onEvent(StorePostId(widget.postId));
                              viewModel.onEvent(StoreNickname(
                                  profileViewModel.state.model?.nickname ??
                                      ""));
                            },
                            onSaved: (value) {
                              viewModel.onEvent(StoreContent(value!));
                              viewModel.onEvent(StoreEmail(
                                  profileViewModel.state.model?.email ?? ''));
                              viewModel.onEvent(StorePostId(widget.postId));
                              viewModel.onEvent(StoreNickname(
                                  profileViewModel.state.model?.nickname ??
                                      ""));
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
                                  onPressed: () {
                                    FocusScope.of(context)
                                        .requestFocus(FocusNode());
                                    if (validateAndSave()) {
                                      viewModel.onEvent(RegisterComment(
                                          state.commentModel.post!,
                                          state.commentModel.content!,
                                          state.commentModel.author!,
                                          state.commentModel.email!));
                                    }
                                  },
                                )),
                          ),
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
