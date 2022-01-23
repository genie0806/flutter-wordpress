import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/src/provider.dart';
import 'package:virtue_test/domain/model/comment_model/comment_get_model.dart';
import 'package:virtue_test/presentation/comment_page/comment_page_event.dart';
import 'package:virtue_test/presentation/comment_page/comment_page_state.dart';
import 'package:virtue_test/presentation/comment_page/comment_page_view_model.dart';
import 'package:virtue_test/presentation/comment_page/components/comment_form_filed.dart';
import 'package:virtue_test/presentation/comment_page/components/comment_page_app_bar.dart';
import 'package:virtue_test/presentation/comment_page/components/comment_text_form_field.dart';
import 'package:virtue_test/presentation/comment_page/components/register_comment_field.dart';
import 'package:virtue_test/presentation/post_list_page/post_list_page_view_model.dart';
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
  final TextEditingController _controller = TextEditingController();

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
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CommentPageViewModel>();
    final state = viewModel.state;
    final model = viewModel.state.model;
    final profileViewModel = context.watch<UserMeViewModel>();
    final postListViewModel = context.watch<PostListPageViewModel>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: WillPopScope(
        onWillPop: () async {
          Navigator.pop(context);
          postListViewModel.refreshList();
          return true;
        },
        child: Scaffold(
          appBar: AppBar(
            titleSpacing: 4,
            toolbarHeight: 44,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            elevation: 0.7,
            title: CommentPageAppBar(
                postListViewModel: postListViewModel, model: model),
          ),
          body: Stack(children: [
            Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      if (state.loading) ...{
                        const Padding(
                          padding: EdgeInsets.only(top: 20),
                        ),
                        const SizedBox(
                          height: 50,
                          width: 50,
                          child: Center(child: CircularProgressIndicator()),
                        ),
                      } else if (model.isEmpty) ...{
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
                      } else ...{
                        ...model.map(
                          (e) => CommentFormField(
                            model: e,
                          ),
                        )
                      }
                    ],
                  ),
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
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          RegisterCommentField(
                              globalKey: globalKey,
                              controller: _controller,
                              viewModel: viewModel,
                              profileViewModel: profileViewModel,
                              commentPage: widget,
                              state: state),
                        ]),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
