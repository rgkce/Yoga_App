import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class VerificationCode extends StatefulWidget {
  const VerificationCode({super.key});

  @override
  State<VerificationCode> createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
                color: AppColors.lineerStart,
              ),
              Center(
                child: Container(
                  height: 99,
                  width: 109.68,
                  child: Image.asset('assets/purple_logo.png'),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: FractionallySizedBox(
                      widthFactor: 1,
                      child: Image.asset(
                        'assets/signup_ellipse.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Image.asset('assets/splash_screen.png'),
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            'Verification Code',
                            style: GoogleFonts.ptSans(
                                color: AppColors.primaryColor,
                                fontSize: 36,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Please type the verification code sent to',
                          style: GoogleFonts.ptSans(
                              color: AppColors.primaryColor, fontSize: 15),
                        ),
                        Text(
                          'youremail@gmail.com ',
                          style: GoogleFonts.ptSans(
                              color: AppColors.primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: AppColors.primaryColor,
                              ),
                              child: Center(
                                child: ShaderMask(
                                  shaderCallback: (bounds) => LinearGradient(
                                    colors: [
                                      AppColors.lineerStart,
                                      AppColors.lineerEnd
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ).createShader(bounds),
                                  child: Text(
                                    '5',
                                    style: GoogleFonts.ptSans(
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.primaryColor),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: AppColors.primaryColor,
                              ),
                              child: Center(
                                child: ShaderMask(
                                  shaderCallback: (bounds) => LinearGradient(
                                    colors: [
                                      AppColors.lineerStart,
                                      AppColors.lineerEnd
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ).createShader(bounds),
                                  child: Text(
                                    '3',
                                    style: GoogleFonts.ptSans(
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.primaryColor),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: AppColors.primaryColor,
                              ),
                              child: Center(
                                child: ShaderMask(
                                  shaderCallback: (bounds) => LinearGradient(
                                    colors: [
                                      AppColors.lineerStart,
                                      AppColors.lineerEnd
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ).createShader(bounds),
                                  child: Text(
                                    '0',
                                    style: GoogleFonts.ptSans(
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.primaryColor),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: AppColors.primaryColor,
                              ),
                              child: Center(
                                child: ShaderMask(
                                  shaderCallback: (bounds) => LinearGradient(
                                    colors: [
                                      AppColors.lineerStart,
                                      AppColors.lineerEnd
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ).createShader(bounds),
                                  child: Text(
                                    '9',
                                    style: GoogleFonts.ptSans(
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.primaryColor),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              'I don’t receive a code!',
                              style: GoogleFonts.ptSans(
                                  fontSize: 18, color: AppColors.primaryColor),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Please resend',
                              style: GoogleFonts.ptSans(
                                  fontSize: 18,
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
