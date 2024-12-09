import 'package:flutter/material.dart';
import 'package:yoga_app/constants/colors.dart';
import 'package:yoga_app/widgets/next_button.dart';

import 'meditation.dart';

class DailyYoga extends StatefulWidget {
  const DailyYoga({super.key});

  @override
  State<DailyYoga> createState() => _DailyYogaState();
}

class _DailyYogaState extends State<DailyYoga> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 97),
              height: 304,
              width: 328,
              child: Image.asset('assets/daily_yoga.png'),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
                child: Column(
                  children: [
                    Image.asset('assets/yoga_text.png'),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset('assets/daily_text.png'),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset('assets/daily_detail.text.png'),
                    SizedBox(
                      height: 20,
                    ),
                    NextButton(
                      nextPage: Meditation(),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Image.asset('assets/skip_button.png'),
          ],
        ),
      ),
    );
  }
}
