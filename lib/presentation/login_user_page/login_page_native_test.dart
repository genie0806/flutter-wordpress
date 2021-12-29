import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';
import 'package:virtue_test/data/data_source/remote/login_user_api.dart';
import 'package:virtue_test/presentation/login_page/test_page.dart';
import 'package:virtue_test/presentation/post_list_page/post_list_page.dart';

class LoginPageNative extends StatefulWidget {
  const LoginPageNative({Key? key}) : super(key: key);

  @override
  _LoginPageNativeState createState() => _LoginPageNativeState();
}

class _LoginPageNativeState extends State<LoginPageNative> {
  final _scaffoldkey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  bool hidePassword = true;
  bool isApiCallProcess = false;
  final GlobalKey processkey = GlobalKey();

  String? userEmail;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      body: ProgressHUD(
        key: processkey,
        inAsyncCall: isApiCallProcess,
        child: SingleChildScrollView(
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
                      setState(() {
                        isApiCallProcess = true;
                      });
                      LoginUserApi.fetchLoginUser(userEmail, password)
                          .then((response) {
                        setState(() {
                          isApiCallProcess = false;
                        });
                        print(response);
                        if (response) {
                          globalFormKey.currentState?.reset();
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => TestPage()));
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
