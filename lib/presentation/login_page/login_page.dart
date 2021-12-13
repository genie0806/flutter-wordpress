import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:virtue_test/presentation/login_page/login_page_view_model.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('test'),
      ),
      body: LoginUI(),
    );
  }

  LoginUI() {
    return Consumer<GoogleSign>(builder: (context, model, child) {
      if (model.googleAccount != null) {
        return Center(
          child: LoggedInUi(model),
        );
      } else {
        return loginContorols(context);
      }
    });
  }

  LoggedInUi(GoogleSign model) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage:
              Image.network(model.googleAccount!.photoUrl ?? "").image,
        ),
        Text(model.googleAccount!.displayName ?? ''),
        ActionChip(
            label: Text("LogOut"),
            onPressed: () {
              Provider.of<GoogleSign>(context, listen: false).logOut();
            })
      ],
    );
  }

  loginContorols(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {
                Provider.of<GoogleSign>(context, listen: false).login();
              },
              child: Text('구글 로그인'))
        ],
      ),
    );
  }
}
