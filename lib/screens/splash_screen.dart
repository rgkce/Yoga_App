import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yoga_app/screens/daily_yoga.dart';

import '../constants/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => DailyYoga()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.lineerStart,
                  AppColors.lineerEnd,
                ],
                begin: Alignment.centerLeft, //ilk rengin başlangiç
                end: Alignment.bottomRight, //ikinci rengin bitiş
              ),
            ),
          ),
          Image.asset('assets/splash_screen.png'),
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 200,
                  width: 400,
                  child: Image.asset('assets/white_logo.png'))),
        ],
      ),
    );
  }
}
