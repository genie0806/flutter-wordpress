import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:virtue_test/data/data_source/remote/login_user_api.dart';
import 'package:virtue_test/presentation/create_user_page/create_user_page_view_model.dart';
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
  bool hidePassword = true;
 
  

  String? userEmail;
  String? password;

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<LoginUserViewModel>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Form(
            key: globalFormKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: FormHelper.inputFieldWidget(
                    context,
                    const Icon(Icons.email),
                    "username",
                    "이메일",
                    (value) {
                      if (value.isEmpty) {
                        return '이메일을 입력해주세요';
                      }
                      return null;
                    },
                    (saverValue) {
                      userEmail = saverValue.toString().trim();
                    },
                  ),
                ),
Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
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
            viewModel.onEvent(StoreUsername(onSavedVal.toString().trim()));
          },
          cursorColor: const Color(0xff405376),
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
          decoration: textInputDeco('이메일'),
        ))



                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: FormHelper.inputFieldWidget(
                      context, const Icon(Icons.password), "password", "비밀번호",
                      (value) {
                    if (value.isEmpty) {
                      return '비밀번호를 입력해주세요';
                    }
                    return null;
                  }, (savedValue) {
                    password = savedValue.toString().trim();
                  },
                      initialValue: "",
                      obscureText: hidePassword,
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              hidePassword = !hidePassword;
                            });
                          },
                          icon: Icon(hidePassword
                              ? Icons.visibility_off
                              : Icons.visibility))),
                ),
                FormHelper.submitButton("Login", () {
                  if (validateAndSave()) {
                    
                    LoginUserApi.fetchLoginUser(userEmail, password)
                        .then((response) {
                    
                      print(response);
                      if (response) {
                        globalFormKey.currentState?.reset();
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => PostListPage()));
                        print(response);
                      } else {
                        FormHelper.showSimpleAlertDialog(
                            context, '로그인 오류', '아이디 또는 비밀번호가 잘못되었습니다.', 'ok',
                            () {
                          Navigator.of(context).pop();
                        });
                      }
                    });
                  }
                }),
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
