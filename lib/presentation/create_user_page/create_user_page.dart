import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/src/provider.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';
import 'package:virtue_test/presentation/create_user_page/components/text_field_item.dart';
import 'package:virtue_test/presentation/create_user_page/create_user_event.dart';
import 'package:virtue_test/presentation/create_user_page/create_user_page_view_model.dart';
import 'package:virtue_test/presentation/create_user_page/create_user_state.dart';
import 'package:virtue_test/presentation/post_list_page/post_list_page.dart';

class CreateUserPage extends StatefulWidget {
  const CreateUserPage({Key? key}) : super(key: key);

  @override
  _CreateUserPageState createState() => _CreateUserPageState();
}

class _CreateUserPageState extends State<CreateUserPage> {
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  final GlobalKey processkey = GlobalKey();
  StreamSubscription? streamSubscription;
  ProgressIndicator? _progressIndicator;
  //TextEditingController _emailController =
  //TextEditingController.fromValue(TextEditingValue(text: ""));

  @override
  void initState() {
    super.initState();
    _progressIndicator;
    Future.microtask(() {
      final viewModel = context.read<CreateUserPageViewModel>();
      streamSubscription = viewModel.uiEventStream.listen((event) {
        event.when(showSuccessToast: (String message) {
          Fluttertoast.showToast(
                  msg: message,
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: const Color(0xff6E6E6E),
                  fontSize: 20,
                  toastLength: Toast.LENGTH_SHORT)
              .whenComplete(() {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const PostListPage()),
                (route) => false);
          });
        }, showErrorToast: (String message) {
          Fluttertoast.showToast(
              msg: message,
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
    //_emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CreateUserPageViewModel>();
    final state = viewModel.state;
    return SafeArea(
      child: Scaffold(
        body: ProgressHUD(
          inAsyncCall: state.isApiCallProcess,
          key: processkey,
          child: SingleChildScrollView(
            child: Form(
              key: globalKey,
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    emailField(context, viewModel),
                    passwordFiled(context, viewModel),
                    confirmPasswordFiled(context, viewModel),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: registerButton(context, viewModel),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget emailField(BuildContext context, CreateUserPageViewModel viewModel) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextFormField(
          initialValue: "",
          //controller: _emailController,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (onValidateVal) {
            if (onValidateVal!.trim().isEmpty) {
              return '이메일을 입력해주세요';
            }
            if (!onValidateVal.contains('@')) {
              return '이메일 형식으로 입력해주세요';
            }
            if (!onValidateVal.contains('.')) {
              return '이메일 형식으로 입력해주세요';
            }
            return null;
          },
          onSaved: (onSavedVal) {
            viewModel.onEvent(StoreEmail(onSavedVal!));
          },
          cursorColor: const Color(0xff405376),
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
          decoration: textInputDeco('이메일'),
        ));
  }

//비밀번호 입력 란
  Widget passwordFiled(
      BuildContext context, CreateUserPageViewModel viewModel) {
    final state = viewModel.state;
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextFormField(
          initialValue: "",
          autovalidateMode: AutovalidateMode.onUserInteraction,
          obscureText: state.hidePassword,
          validator: (onValidateVal) {
            if (onValidateVal!.trim().isEmpty) {
              return '비밀번호를 입력해주세요';
            }
            if (onValidateVal.length < 8) {
              return '비밀번호는 영문 숫자를 포함하여 8자 이상이어야 합니다.';
            }
            return null;
          },
          onChanged: (val) {
            viewModel.onEvent(StorePassword(val));
          },
          onSaved: (onSavedVal) {
            viewModel.onEvent(StorePassword(onSavedVal!));
          },
          cursorColor: const Color(0xff405376),
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
          decoration: passwordInputDeco(viewModel, state),
        ));
  }

  //비밀번호 확인 입력란

  Widget confirmPasswordFiled(
      BuildContext context, CreateUserPageViewModel viewModel) {
    final state = viewModel.state;
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextFormField(
          initialValue: "",
          autovalidateMode: AutovalidateMode.onUserInteraction,
          obscureText: state.hideConfirmPassword,
          validator: (onValidateVal) {
            if (onValidateVal!.isEmpty) {
              return '확인을 위해 비밀번호를 한 번 더 입력해주세요';
            }

            if (viewModel.state.userModel.password !=
                viewModel.state.userModel.confirmPassword) {
              return '비밀번호가 일치하지 않습니다.';
            }
            return null;
          },
          onChanged: (val) {
            viewModel.onEvent(StoreConfirmPassword(val));
          },
          cursorColor: const Color(0xff405376),
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
          decoration: confirmPasswordInputDeco(viewModel, state),
        ));
  }

//회원가입 버튼 입력
  Widget registerButton(
      BuildContext context, CreateUserPageViewModel viewModel) {
    bool validateAndSave() {
      final form = globalKey.currentState;
      if (form?.validate() ?? true) {
        form?.save();
        return true;
      } else {
        return false;
      }
    }

    return FormHelper.submitButton("Register", () {
      FocusScope.of(context).requestFocus(FocusNode());

      if (validateAndSave()) {
        viewModel.onEvent(const RegisterUser());
      }
    });
  }
}
