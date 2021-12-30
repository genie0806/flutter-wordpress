import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/src/provider.dart';
import 'package:virtue_test/presentation/create_user_page/components/text_field_item.dart';
import 'package:virtue_test/presentation/create_user_page/create_user_event.dart';
import 'package:virtue_test/presentation/create_user_page/create_user_page_view_model.dart';
import 'package:virtue_test/presentation/post_list_page/post_list_page.dart';

class CreateUserPage extends StatefulWidget {
  const CreateUserPage({Key? key}) : super(key: key);

  @override
  _CreateUserPageState createState() => _CreateUserPageState();
}

class _CreateUserPageState extends State<CreateUserPage> {
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  StreamSubscription? streamSubscription;
  //TextEditingController _emailController =
  //TextEditingController.fromValue(TextEditingValue(text: ""));

  @override
  void initState() {
    super.initState();
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.only(left: 70),
            child: Text(
              '이메일로 회원가입',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: globalKey,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  emailField(context, viewModel),
                  passwordFiled(context, viewModel),
                  confirmPasswordFiled(context, viewModel),
                  nicknameField(context, viewModel),
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
    );
  }

  Widget emailField(BuildContext context, CreateUserPageViewModel viewModel) {
    return Padding(
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
        padding: const EdgeInsets.symmetric(vertical: 15),
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

//별명 입력란
  Widget nicknameField(
      BuildContext context, CreateUserPageViewModel viewModel) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: TextFormField(
          initialValue: "",
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (onValidateVal) {
            if (onValidateVal!.trim().isEmpty) {
              return '닉네임을 2~15자 내로 입력해주세요';
            }
            if (onValidateVal.length < 2 && onValidateVal.length > 15) {
              return '닉네임을 2~15자 내로 입력해주세요';
            }

            return null;
          },
          onSaved: (onSavedVal) {
            viewModel.onEvent(StoreNickName(onSavedVal!));
          },
          cursorColor: const Color(0xff405376),
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
          decoration: textInputDeco('닉네임'),
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

    return ElevatedButton(
      onPressed: () {
        FocusScope.of(context).requestFocus(FocusNode());

        if (validateAndSave()) {
          viewModel.onEvent(const RegisterUser());
        }
      },
      child: const Text(
        '회원가입 완료',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      ),
      style: ElevatedButton.styleFrom(
        primary: Color(0xff405479),
        //maximumSize: const Size(375, 50),
        minimumSize: const Size(375, 55),
        //side: const BorderSide(color: Colors.black, width: 0.5),
      ),
    );
  }
}
