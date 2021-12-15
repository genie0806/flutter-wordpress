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
      body: Center(
        child: model != null
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: Image.network(viewModel.useCases
                                .getSocialLogin.googleAccount!.photoUrl ??
                            "")
                        .image,
                    radius: 50,
                  ),
                  Text(model.displayName ?? ''),
                  Text(model.email ?? ''),
                  ActionChip(
                      label: Text("LogOut"),
                      onPressed: () {
                        viewModel.useCases.getSocialLogout;
                      })
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        viewModel.useCases.getSocialLogout;
                      },
                      child: Text('구글 로그인'))
                ],
              ),
      ),
    );
  }
}
