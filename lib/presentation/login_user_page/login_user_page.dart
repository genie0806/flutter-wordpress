import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/src/provider.dart';
import 'package:virtue_test/domain/model/login_user_model/login_response_model.dart';
import 'package:virtue_test/presentation/login_user_page/components/text_field_item.dart';
import 'package:virtue_test/presentation/login_user_page/login_user_event.dart';
import 'package:virtue_test/presentation/login_user_page/login_user_view_model.dart';
import 'package:virtue_test/presentation/post_list_page/post_list_page.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:virtue_test/presentation/user_me_data/user_me_event.dart';
import 'package:virtue_test/presentation/user_me_data/user_me_view_model.dart';

class LoginUserPage extends StatefulWidget {
  const LoginUserPage({Key? key}) : super(key: key);

  @override
  _LoginUserPageState createState() => _LoginUserPageState();
}

class _LoginUserPageState extends State<LoginUserPage> {
  final GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  StreamSubscription? streamSubscription;
  LoginResponseModel responseModel = LoginResponseModel();
  //TextEditingController passwordController = TextEditingController();

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
    bool validateAndSave() {
      final form = globalFormKey.currentState;
      if (form?.validate() ?? true) {
        form?.save();
        return true;
      } else {
        return false;
      }
    }

    final viewModel = context.watch<LoginUserViewModel>();
    final state = viewModel.state;
    final profileViewModel = context.watch<UserMeViewModel>();
    final profileState = profileViewModel.state;
    return Container(
      color: Colors.transparent,
      child: SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
              titleSpacing: 6,
              automaticallyImplyLeading: false,
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              elevation: 0,
              title: Row(
                children: [
                  IconButton(
                    padding: const EdgeInsets.only(top: 5),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Image.asset(
                      'assets/noun-arrow-left-1476218.png',
                      width: 26,
                      height: 26,
                      color: Colors.black,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 100),
                    child: Text(
                      '이메일 로그인',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              )),
          body: SingleChildScrollView(
            child: Form(
              key: globalFormKey,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
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
                          onChanged: (val) {
                            viewModel.onEvent(StoreUsername(val));
                            profileViewModel.onEvent(StoreProfileUser(val));
                          },
                          onSaved: (value) {
                            viewModel.onEvent(
                                StoreUsername(value.toString().trim()));
                            profileViewModel.onEvent(
                                StoreProfileUser(value.toString().trim()));
                          },
                          cursorColor: const Color(0xff405376),
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          decoration: textInputDeco('이메일'),
                        )),
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
                          onChanged: (val) {
                            viewModel.onEvent(StorePassword(val));
                            profileViewModel.onEvent(StoreProfilePassword(val));
                          },
                          onSaved: (value) {
                            viewModel.onEvent(
                                StorePassword(value.toString().trim()));
                            profileViewModel.onEvent(
                                StoreProfilePassword(value.toString().trim()));
                          },
                          cursorColor: const Color(0xff405376),
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          decoration: passwordInputDeco(viewModel, state),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          FocusScope.of(context).requestFocus(FocusNode());

                          if (validateAndSave()) {
                            viewModel.onEvent(LoginUserEvent.loginUser(
                                state.username, state.password));
                          }
                        },
                        child: const Text(
                          '로그인하기',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xff405479),
                          //maximumSize: const Size(375, 50),
                          minimumSize: const Size(375, 55),
                          //side: const BorderSide(color: Colors.black, width: 0.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
