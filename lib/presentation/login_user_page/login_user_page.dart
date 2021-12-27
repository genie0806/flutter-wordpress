import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/src/provider.dart';
import 'package:virtue_test/data/data_source/remote/login_user_api.dart';
import 'package:virtue_test/domain/model/login_user_model/login_response_model.dart';
import 'package:virtue_test/presentation/login_user_page/components/text_field_item.dart';
import 'package:virtue_test/presentation/login_user_page/login_user_event.dart';
import 'package:virtue_test/presentation/login_user_page/login_user_view_model.dart';
import 'package:virtue_test/presentation/post_list_page/post_list_page.dart';

class LoginPageNative extends StatefulWidget {
  const LoginPageNative({Key? key}) : super(key: key);

  @override
  _LoginPageNativeState createState() => _LoginPageNativeState();
}

class _LoginPageNativeState extends State<LoginPageNative> {
  final GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  StreamSubscription? streamSubscription;
  LoginResponseModel responseModel = LoginResponseModel();

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      final viewModel = context.read<LoginUserViewModel>();
      streamSubscription = viewModel.uiEventStream.listen((event) {
        event.when(loginSuccessToast: (String message) {
          responseModel.success == true;
          Fluttertoast.showToast(
                  msg: "로그인에 성공하였습니다.",
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: const Color(0xff6E6E6E),
                  fontSize: 20,
                  toastLength: Toast.LENGTH_SHORT)
              .whenComplete(() {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const PostListPage()),
                (route) => false);
          });
        }, loginErrorToast: (String message) {
          responseModel.success == false;
          Fluttertoast.showToast(
              msg: "아이디 또는 비밀번호가 잘못되었습니다",
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
    final viewModel = context.watch<LoginUserViewModel>();
    final state = viewModel.state;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Form(
            key: globalFormKey,
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: TextFormField(
                      initialValue: "",
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
                      onSaved: (username) {
                        viewModel.onEvent(StoreUsername(state.username.trim()));
                      },
                      cursorColor: const Color(0xff405376),
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      decoration: textInputDeco('이메일'),
                    )),
                //  Padding(
                //       padding: const EdgeInsets.only(bottom: 20),
                //       child: FormHelper.inputFieldWidget(
                //           context, const Icon(Icons.password), "password", "비밀번호",
                //           (value) {
                //         if (value.isEmpty) {
                //           return '비밀번호를 입력해주세요';
                //         }
                //         return null;
                //       }, (savedValue) {
                //         password = savedValue.toString().trim();
                //       },
                //           initialValue: "",
                //           obscureText: hidePassword,
                //           suffixIcon: IconButton(
                //               onPressed: () {
                //                 setState(() {
                //                   hidePassword = !hidePassword;
                //                 });
                //               },
                //               icon: Icon(hidePassword
                //                   ? Icons.visibility_off
                //                   : Icons.visibility))),
                //     ),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
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
                      //onChanged: (val) {
                      //  viewModel.onEvent(StorePassword(val));
                      //},

                      onSaved: (password) {
                        viewModel.onEvent(StorePassword(state.password.trim()));
                      },

                      cursorColor: const Color(0xff405376),
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      decoration: passwordInputDeco(viewModel, state),
                    )),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());

                    if (validateAndSave()) {
                      viewModel.onEvent(const LoginUser());
                    }
                  },
                  child: const Text(
                    '로그인하기',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff405479),
                    //maximumSize: const Size(375, 50),
                    minimumSize: const Size(375, 55),
                    //side: const BorderSide(color: Colors.black, width: 0.5),
                  ),
                ),

                //FormHelper.submitButton("Login", () {
                //  if (validateAndSave()) {
                //
                //    LoginUserApi.fetchLoginUser(userEmail, password)
                //        .then((response) {
                //
                //      print(response);
                //      if (response) {
                //        globalFormKey.currentState?.reset();
                //        Navigator.of(context).pushReplacement(
                //            MaterialPageRoute(
                //                builder: (context) => PostListPage()));
                //        print(response);
                //      } else {
                //        FormHelper.showSimpleAlertDialog(
                //            context, '로그인 오류', '아이디 또는 비밀번호가 잘못되었습니다.', 'ok',
                //            () {
                //          Navigator.of(context).pop();
                //        });
                //      }
                //    });
                //  }
                //},
                //),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form?.validate() ?? true) {
      form?.save();
      return true;
    } else {
      return false;
    }
  }
}
