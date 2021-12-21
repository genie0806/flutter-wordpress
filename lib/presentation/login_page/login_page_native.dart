import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class LoginPageNative extends StatefulWidget {
  const LoginPageNative({Key? key}) : super(key: key);

  @override
  _LoginPageNativeState createState() => _LoginPageNativeState();
}

class _LoginPageNativeState extends State<LoginPageNative> {
  final _scaffoldkey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
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
                    "UserName",
                    (value) {
                      if (value.isEmpty) {
                        return '이메일을 입력해주세요';
                      }
                      return null;
                    },
                    (saverValue) {
                      email = saverValue.toString().trim();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: FormHelper.inputFieldWidget(
                      context,
                      const Icon(Icons.password),
                      "password",
                      "Password", (value) {
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
                    print()
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
