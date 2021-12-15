import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:virtue_test/domain/model/social_user_model/social_user_model.dart';
import 'package:virtue_test/presentation/login_page/login_page_view_model.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<LoginViewModel>();
    final model = SocialUserModel();
    return Scaffold(
      appBar: AppBar(
        title: Text('test'),
      ),
      body: LoginUi(),
    );
  }
}

class LoginUi extends StatelessWidget {
  const LoginUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<LoginViewModel>();
    final model = SocialUserModel();
    if (viewModel.useCases.getSocialLogin.googleAccount != null) {
      return Center(child: LoggedUi());
    } else {
      return LoginControls();
    }
  }
}

class LoggedUi extends StatelessWidget {
  const LoggedUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<LoginViewModel>();
    final model = SocialUserModel();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              viewModel.useCases.getSocialLogin.googleAccount?.photoUrl ?? ""),
          radius: 50,
        ),
        Text(viewModel.useCases.getSocialLogin.socialUserModel?.displayName ??
            ''),
        Text(viewModel.useCases.getSocialLogin.socialUserModel?.email ?? ''),
        ActionChip(
            avatar: Icon(Icons.logout),
            label: Text("LogOut"),
            onPressed: () {
              viewModel.googleLogout();
            })
      ],
    );
  }
}

class LoginControls extends StatelessWidget {
  const LoginControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<LoginViewModel>();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
            onPressed: () {
              viewModel.googleLogin();
            },
            child: Text('구글 로그인'))
      ],
    );
  }
}
