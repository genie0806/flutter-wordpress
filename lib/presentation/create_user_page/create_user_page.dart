import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';
import 'package:virtue_test/data/data_source/remote/create_user_api.dart';
import 'package:virtue_test/domain/model/create_user_model/create_user_model.dart';
import 'package:virtue_test/domain/model/create_user_model/user_model.dart';
import 'package:virtue_test/domain/util/email_validator.dart';
import 'package:virtue_test/presentation/create_user_page/create_user_event.dart';
import 'package:virtue_test/presentation/create_user_page/create_user_page_view_model.dart';

class CreateUserPage extends StatefulWidget {
  const CreateUserPage({Key? key}) : super(key: key);

  @override
  _CreateUserPageState createState() => _CreateUserPageState();
}

class _CreateUserPageState extends State<CreateUserPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  final GlobalKey processkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CreateUserPageViewModel>();
    final state = viewModel.state;
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
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
                    emailForm(context, viewModel),
                    passwordForm(context, viewModel),
                    confirmForm(context, viewModel),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: registerButton(context),
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

  //이메일 입력 란
  Widget emailForm(BuildContext context, CreateUserPageViewModel viewModel) {
    return FormHelper.inputFieldWidget(
        context, const Icon(Icons.email), "이메일", "이메일", (value) {
      if (value.isEmpty) {
        return '이메일을 입력해주세요';
      }
      if (value.isEmpty && !value.toString().isValidEmail()) {
        return '이메일 형식으로 입력해주세요';
      }
      return null;
    }, (onSavedVal) {
      viewModel.onEvent(StoreEmail(onSavedVal));
    }, initialValue: "", paddingBottom: 20);
  }

//비밀번호 입력 란
  Widget passwordForm(BuildContext context, CreateUserPageViewModel viewModel) {
    final state = viewModel.state;
    return FormHelper.inputFieldWidget(
        context,
        const Icon(Icons.verified_user),
        "비밀번호",
        "비밀번호",
        (onValidateVal) {
          if (onValidateVal.isEmpty) {
            return '비밀번호를 입력해주세요';
          }
          return null;
        },
        (onSavedVal) {
          viewModel.onEvent(StorePassword(onSavedVal));
        },
        initialValue: "",
        paddingBottom: 20,
        obscureText: state.hidePassword,
        suffixIcon: IconButton(
            color: Colors.redAccent.withOpacity(.4),
            onPressed: () {
              viewModel.onEvent(const TogglePasswordVisibility());
            },
            icon: Icon(
                state.hidePassword ? Icons.visibility_off : Icons.visibility)),
        onChange: (val) {
          viewModel.onEvent(StorePassword(val));
        });
  }

  //비밀번호 확인 입력란
  Widget confirmForm(BuildContext context, CreateUserPageViewModel viewModel) {
    final state = viewModel.state;
    return FormHelper.inputFieldWidget(
        context,
        const Icon(Icons.verified_user),
        "비밀번호 확인",
        "비밀번호 확인",
        (onValidateVal) {
          if (onValidateVal.isEmpty) {
            return '확인을 위해 비밀번호를 한 번 더 입력해주세요';
          }

          if (userModel.password != userModel.confirmPassword) {
            return '비밀번호가 일치하지 않습니다.';
          }
          return null;
        },
        (onSavedVal) {},
        initialValue: "",
        paddingBottom: 20,
        obscureText: state.hideConfirmPassword,
        suffixIcon: IconButton(
            color: Colors.redAccent.withOpacity(.4),
            onPressed: () {
              viewModel.onEvent(const ToggleConfirmPasswordVisibility());
            },
            icon: Icon(
                state.hidePassword ? Icons.visibility_off : Icons.visibility)),
        onChange: (val) {
          viewModel.onEvent(StoreConfirmPassword(val));
        });
  }

//로그인 버튼 입력
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
      if (validateAndSave()) {
        viewModel.onEvent(const RegisterUser());
      }

      if (validateAndSave()) {
        setState(() {
          isApiCallProcess = true;
        });

        CreateUserAPi.registerUser(userModel).then(
          (responseModel) {
            setState(() {
              isApiCallProcess = false;
            });

            if (responseModel.code == 200) {
              FormHelper.showSimpleAlertDialog(
                  context, "", responseModel.message ?? "", "OK", () {
                Navigator.of(context).pop();
              });
            } else {
              FormHelper.showSimpleAlertDialog(
                  context, "Virtue Register", responseModel.message ?? "", "OK",
                  () {
                Navigator.of(context).pop();
              });
            }
          },
        );
      }
    });
  }
}
