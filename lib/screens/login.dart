import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoga_app/screens/location.dart';
import 'package:yoga_app/screens/reset_password.dart';

import '../constants/colors.dart';
import 'signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            SingleChildScrollView(
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
                    color: AppColors.primaryColor,
                  ),
                  Center(
                    child: Container(
                      height: 156,
                      width: 175.67,
                      child: Image.asset('assets/white_logo.png'),
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: FractionallySizedBox(
                          widthFactor: 1,
                          child: Image.asset(
                            'assets/login_ellipse.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Center(
                              child: Text(
                                'Login',
                                style: GoogleFonts.ptSans(
                                    color: AppColors.titleColor,
                                    fontSize: 36,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Email',
                                    prefixIcon: Icon(Icons.email_outlined,
                                        color: AppColors.greyColor),
                                    hintText: 'your email@gmail.com',
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400]),
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      borderSide: BorderSide(
                                        color: AppColors.greyColor,
                                        width: 1.0,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      borderSide: BorderSide(
                                        color: Colors.grey[300]!,
                                        width: 1.0,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    prefixIcon: Icon(
                                      Icons.remove_red_eye_outlined,
                                      color: AppColors.greyColor,
                                    ),
                                    hintText: '**********',
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400]),
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      borderSide: BorderSide(
                                        color: AppColors.greyColor,
                                        width: 1.0,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      borderSide: BorderSide(
                                        color: Colors.grey[300]!,
                                        width: 1.0,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => Location(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 54,
                                width: 327,
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
                                        color: AppColors.primaryColor,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 100,
                              width: 300,
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: ShaderMask(
                                      shaderCallback: (bounds) =>
                                          LinearGradient(
                                        colors: [
                                          AppColors.lineerStart,
                                          AppColors.lineerEnd
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ).createShader(bounds),
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ResetPassword(),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          'Forget your password?',
                                          style: GoogleFonts.ptSans(
                                              color: AppColors.primaryColor,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        "Don't have an account?",
                                        style: GoogleFonts.ptSans(
                                          color: AppColors.textColor,
                                          fontSize: 18,
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) => Signup()),
                                          );
                                        },
                                        child: Text(
                                          'Sign Up',
                                          style: GoogleFonts.ptSans(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: AppColors.lineerEnd),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
