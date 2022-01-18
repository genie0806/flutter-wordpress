import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:virtue_test/presentation/social_login_page/social_login_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const SocialLoginPage())));

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
                padding: const EdgeInsets.only(top: 390),
                child: Text(
                  '@ Copyright 2022, 버체 (Virtue)',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
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
