import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoga_app/constants/colors.dart';
import 'package:yoga_app/screens/verification_code.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _isChecked = false;

  void _toggleCheckbox(bool? value) {
    setState(() {
      _isChecked = value ?? false;
    });
  }

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
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            'Sign up',
                            style: GoogleFonts.ptSans(
                                color: AppColors.primaryColor,
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
                                labelText: 'Fullname',
                                prefixIcon: Icon(
                                  Icons.person_2_outlined,
                                  color: AppColors.primaryColor,
                                ),
                                labelStyle:
                                    TextStyle(color: AppColors.primaryColor),
                                hintText: 'Your name here',
                                hintStyle:
                                    TextStyle(color: AppColors.primaryColor),
                                filled: true,
                                fillColor: Colors.transparent,
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
                                    color: AppColors.lineerEnd,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Email',
                                labelStyle:
                                    TextStyle(color: AppColors.primaryColor),
                                prefixIcon: Icon(Icons.email_outlined,
                                    color: AppColors.primaryColor),
                                hintText: 'Your email@gmail.com',
                                hintStyle:
                                    TextStyle(color: AppColors.primaryColor),
                                filled: true,
                                fillColor: Colors.transparent,
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
                                    color: AppColors.lineerEnd,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Phone',
                                labelStyle:
                                    TextStyle(color: AppColors.primaryColor),
                                prefixIcon: Icon(Icons.call,
                                    color: AppColors.primaryColor),
                                hintText: 'your phone number',
                                hintStyle:
                                    TextStyle(color: AppColors.primaryColor),
                                filled: true,
                                fillColor: Colors.transparent,
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
                                    color: AppColors.lineerEnd,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle:
                                    TextStyle(color: AppColors.primaryColor),
                                prefixIcon: Icon(Icons.remove_red_eye_outlined,
                                    color: AppColors.primaryColor),
                                hintText: 'your phone number',
                                hintStyle:
                                    TextStyle(color: AppColors.primaryColor),
                                filled: true,
                                fillColor: Colors.transparent,
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
                                    color: AppColors.lineerEnd,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Row(
                            children: [
                              Checkbox(
                                value: _isChecked,
                                onChanged: _toggleCheckbox,
                                checkColor: AppColors.titleColor,
                                fillColor:
                                    WidgetStateProperty.resolveWith<Color>(
                                        (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.disabled)) {
                                    return Colors.white.withOpacity(.32);
                                  }
                                  return Colors.white;
                                }),
                              ),
                              Text(
                                'Yes ! Agree all',
                                style: GoogleFonts.ptSans(
                                    color: AppColors.primaryColor,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Teams',
                                style: GoogleFonts.ptSans(
                                    color: AppColors.primaryColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '&',
                                style: GoogleFonts.ptSans(
                                    color: AppColors.primaryColor,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Condition',
                                style: GoogleFonts.ptSans(
                                    color: AppColors.primaryColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => VerificationCode(),
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
                                  'Sign up',
                                  style: GoogleFonts.ptSans(
                                      color: AppColors.primaryColor,
                                      fontSize: 20),
                                ),
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
      ),
    );
  }
}
