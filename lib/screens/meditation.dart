import 'package:flutter/material.dart';
import 'package:yoga_app/constants/colors.dart';
import 'package:yoga_app/screens/community.dart';
import 'package:yoga_app/widgets/next_button.dart';

class Meditation extends StatefulWidget {
  const Meditation({super.key});

  @override
  State<Meditation> createState() => _MeditationState();
}

class _MeditationState extends State<Meditation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 153, left: 30, right: 15),
              height: 231.01,
              width: 329,
              child: Image.asset('assets/yoga_classes.png'),
            ),
            SizedBox(
              height: 60,
            ),
            Center(
              child: Container(
                child: Column(
                  children: [
                    Image.asset('assets/meditation_text.png'),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset('assets/classes_text.png'),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset('assets/classes_detail.png'),
                    SizedBox(
                      height: 20,
                    ),
                    NextButton(
                      nextPage: Community(),
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
