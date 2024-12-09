import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoga_app/constants/colors.dart';
import 'package:yoga_app/screens/login.dart';
import 'package:yoga_app/screens/signup.dart';

class LoginSignup extends StatefulWidget {
  const LoginSignup({super.key});

  @override
  State<LoginSignup> createState() => _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 146,
                left: 30,
              ),
              height: 200,
              width: 250,
              child: Image.asset(
                'assets/purple_logo.png',
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              height: 100,
              width: 259,
              child: Image.asset('assets/welcome_yoga_class.png'),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Container(
                      height: 54,
                      width: 136,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            AppColors.lineerStart,
                            AppColors.lineerEnd,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text(
                          'Login',
                          style: GoogleFonts.ptSans(
                              color: AppColors.primaryColor, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Signup()),
                      );
                    },
                    child: Container(
                      height: 54,
                      width: 136,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Center(
                        child: ShaderMask(
                          shaderCallback: (bounds) => LinearGradient(
                            colors: [
                              AppColors.lineerStart,
                              AppColors.lineerEnd
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ).createShader(bounds),
                          child: Text(
                            'Signup',
                            style: GoogleFonts.ptSans(
                                color: AppColors.primaryColor, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset('assets/social_media.png'),
          ],
        ),
      ),
    );
  }
}
