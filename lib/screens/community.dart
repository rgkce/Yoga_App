import 'package:flutter/material.dart';
import 'package:yoga_app/constants/colors.dart';

import '../widgets/next_button.dart';
import 'login_signup.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 171, left: 40, right: 10),
              height: 208,
              width: 290,
              child: Image.asset('assets/community.png'),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
                height: 250,
                width: 250,
                child: Column(
                  children: [
                    Image.asset('assets/meets_text.png'),
                    SizedBox(
                      height: 30,
                    ),
                    Image.asset('assets/communutiy_text.png'),
                    SizedBox(
                      height: 30,
                    ),
                    Image.asset('assets/community_detail.png'),
                    SizedBox(
                      height: 20,
                    ),
                    NextButton(
                      nextPage: (LoginSignup()),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Image.asset('assets/skip_button.png'),
          ],
        ),
      ),
    );
  }
}
