import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/src/provider.dart';
import 'package:virtue_test/presentation/main_page/main_page.dart';
import 'package:virtue_test/presentation/social_login_page/social_login_page.dart';
import 'package:virtue_test/presentation/user_me_data/user_me_view_model.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      final viewModel = context.read<UserMeViewModel>();
      await Future.delayed(const Duration(seconds: 3));
      String? token = await viewModel
          .useCases.getMyProfileUseCase.appConfigRepository
          .getToken();
      if (token != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const MainPage()));
      } else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const SocialLoginPage()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/splash.jpg'), fit: BoxFit.fill)),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Text(
                  'Virtue',
                  style: GoogleFonts.cormorantSc(
                      fontSize: 100,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 390),
                child: Text(
                  '@ Copyright 2022, 버체 (Virtue)',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
