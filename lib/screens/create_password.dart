import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoga_app/screens/password_change.dart';

import '../constants/colors.dart';

class CreatePassword extends StatefulWidget {
  const CreatePassword({super.key});

  @override
  State<CreatePassword> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
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
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 340.0,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30,
                      ),
                      color: AppColors.primaryColor,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    height: 156,
                    width: 175.67,
                    child: Image.asset('assets/white_logo.png'),
                  ),
                  SizedBox(
                    height: 35,
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
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Text(
                                'Create Password',
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
                              child: Text(
                                'Create a new password and please never \n     share it with anyone for safe use.',
                                style: GoogleFonts.ptSans(
                                  fontSize: 16,
                                  color: AppColors.textColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                labelText: 'New password',
                                prefixIcon: Icon(Icons.lock,
                                    color: AppColors.greyColor),
                                hintText: '**********',
                                hintStyle: TextStyle(color: Colors.grey[400]),
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
                            SizedBox(
                              height: 30,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                labelText: 'Confirm password',
                                prefixIcon: Icon(Icons.lock,
                                    color: AppColors.greyColor),
                                hintText: '**********',
                                hintStyle: TextStyle(color: Colors.grey[400]),
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
                            SizedBox(
                              height: 30,
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => PasswordChange(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 54,
                                width: 328,
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
                                    'Update Password',
                                    style: GoogleFonts.ptSans(
                                        color: AppColors.primaryColor,
                                        fontSize: 20),
                                  ),
                                ),
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
