import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoga_app/screens/login.dart';

import '../constants/colors.dart';

class PasswordChange extends StatefulWidget {
  const PasswordChange({super.key});

  @override
  State<PasswordChange> createState() => _PasswordChangeState();
}

class _PasswordChangeState extends State<PasswordChange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.lineerStart,
                    AppColors.lineerEnd,
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            Image.asset('assets/splash_screen.png'),
            Center(
              child: Container(
                height: 409,
                width: 327,
                child: Column(
                  children: [
                    Text(
                      'Password Changed',
                      style: GoogleFonts.ptSans(
                          color: AppColors.primaryColor,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Congratulations! You have successfully \n            changed your password.',
                      style: GoogleFonts.ptSans(
                        color: AppColors.primaryColor,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Icon(
                      Icons.check_circle,
                      color: AppColors.primaryColor,
                      size: 150,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ),
                        );
                      },
                      child: Container(
                        height: 54,
                        width: 327,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(25),
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
                              'Back to Login',
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
            ),
          ],
        ),
      ),
    );
  }
}
