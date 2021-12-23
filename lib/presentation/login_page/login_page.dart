import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';
import 'package:virtue_test/domain/model/login_user_model/social_user_model.dart';
import 'package:virtue_test/presentation/create_user_page/create_user_page.dart';
import 'package:virtue_test/presentation/login_page/login_page_view_model.dart';
import 'package:virtue_test/presentation/post_list_page/post_list_page.dart';

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
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Virtue',
              style: GoogleFonts.cormorantSc(
                  fontSize: 50, fontWeight: FontWeight.w400),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton.icon(
                onPressed: () async {
                  viewModel.googleLogin().whenComplete(() {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => PostListPage()));
                  });
                },
                icon: SizedBox(
                  height: 25,
                  width: 25,
                  child: Image.network(
                    'https://developers.google.com/identity/images/g-logo.png?hl=ko',
                  ),
                ),
                label: const Text(
                  '구글로 로그인',
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  maximumSize: const Size(300, 40),
                  minimumSize: const Size(300, 40),
                  //side: const BorderSide(color: Colors.black, width: 0.5),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: ElevatedButton.icon(
                onPressed: () async {
                  viewModel.googleLogin().whenComplete(() {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const PostListPage()));
                  });
                },
                icon: const SizedBox(
                  height: 25,
                  width: 25,
                  child: Icon(
                    Ionicons.mail_outline,
                    color: Colors.black,
                  ),
                ),
                label: const Text(
                  '이메일로 로그인',
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  //side: const BorderSide(color: Colors.black, width: 0.5),
                  primary: Colors.white,
                  maximumSize: const Size(300, 40),
                  minimumSize: const Size(300, 40),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 35),
              child: Divider(
                thickness: 2,
                color: Colors.black12,
                indent: 40,
                endIndent: 40,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CreateUserPage()));
                },
                child: RichText(
                  text: const TextSpan(
                      text: "아직 가입하지 않으셨나요?",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                      children: [
                        TextSpan(
                            text: '  이메일로 가입',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14))
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//소셜 로그 아웃 코드
//viewModel.useCases.getSocialLogin.googleAccount != null
//    ? Center(child: LoggedUi())
//class LoggedUi extends StatelessWidget {
//  const LoggedUi({Key? key}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    final viewModel = context.watch<LoginViewModel>();
//    final model = SocialUserModel();
//    return Column(
//      mainAxisAlignment: MainAxisAlignment.center,
//      crossAxisAlignment: CrossAxisAlignment.center,
//      children: [
//        CircleAvatar(
//          backgroundImage: NetworkImage(
//              viewModel.useCases.getSocialLogin.googleAccount?.photoUrl ?? ""),
//          radius: 50,
//        ),
//        Text(viewModel.useCases.getSocialLogin.socialUserModel?.displayName ??
//            ''),
//        Text(viewModel.useCases.getSocialLogin.socialUserModel?.email ?? ''),
//        ActionChip(
//            avatar: Icon(Icons.logout),
//            label: Text("LogOut"),
//            onPressed: () {
//              viewModel.googleLogout();
//            })
//      ],
//    );
//  }
//}
