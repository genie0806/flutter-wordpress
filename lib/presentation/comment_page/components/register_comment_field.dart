import 'package:flutter/material.dart';
import 'package:virtue_test/presentation/comment_page/comment_page.dart';
import 'package:virtue_test/presentation/comment_page/comment_page_event.dart';
import 'package:virtue_test/presentation/comment_page/comment_page_state.dart';
import 'package:virtue_test/presentation/comment_page/comment_page_view_model.dart';
import 'package:virtue_test/presentation/comment_page/components/comment_text_form_field.dart';
import 'package:virtue_test/presentation/user_me_data/user_me_view_model.dart';

class RegisterCommentField extends StatelessWidget {
  const RegisterCommentField({
    Key? key,
    required this.globalKey,
    required TextEditingController controller,
    required this.viewModel,
    required this.profileViewModel,
    required this.commentPage,
    required this.state,
  })  : _controller = controller,
        super(key: key);

  final GlobalKey<FormState> globalKey;
  final TextEditingController _controller;
  final CommentPageViewModel viewModel;
  final UserMeViewModel profileViewModel;
  final CommentPage commentPage;
  final CommentPageState state;

  @override
  Widget build(BuildContext context) {
    bool validateAndSave() {
      final form = globalKey.currentState;
      if (form?.validate() ?? true) {
        form?.save();
        return true;
      } else {
        return false;
      }
    }

    return Form(
      key: globalKey,
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextFormField(
            controller: _controller,
            //initialValue: "",
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (onValidateVal) {
              if (onValidateVal!.trim().isEmpty) {
                return null;
              }
              return null;
            },
            onChanged: (val) {
              viewModel.onEvent(StoreContent(val));
              viewModel.onEvent(
                  StoreEmail(profileViewModel.state.model?.email ?? ''));
              viewModel.onEvent(StorePostId(commentPage.postId));
              viewModel.onEvent(
                  StoreNickname(profileViewModel.state.model?.nickname ?? ""));
            },
            onSaved: (value) {
              viewModel.onEvent(StoreContent(value!));
              viewModel.onEvent(
                  StoreEmail(profileViewModel.state.model?.email ?? ''));
              viewModel.onEvent(StorePostId(commentPage.postId));
              viewModel.onEvent(
                  StoreNickname(profileViewModel.state.model?.nickname ?? ""));
            },
            cursorColor: const Color(0xff405376),
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
            decoration: InputDecoration(
                isDense: true,
                contentPadding: const EdgeInsets.fromLTRB(15, 29, 0, 0),
                hintText: '댓글을 입력해주세요',
                hintStyle: TextStyle(fontSize: 16, color: Colors.grey.shade400),
                enabledBorder: activeInputBorder(),
                focusedBorder: activeInputBorder(),
                errorBorder: errorInputBorder(),
                focusedErrorBorder: errorInputBorder(),
                errorStyle:
                    const TextStyle(color: Colors.redAccent, fontSize: 13),
                suffixIcon: TextButton(
                  child: const Text(
                    '등록',
                    style: TextStyle(
                        color: Color(0xff405479),
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (validateAndSave()) {
                      viewModel.onEvent(RegisterComment(
                        state.commentModel.post!,
                        state.commentModel.content!,
                        state.commentModel.author!,
                        state.commentModel.email!,
                      ));
                    }
                    _controller.clear();
                  },
                )),
          ),
        ),
      ),
    );
  }
}
