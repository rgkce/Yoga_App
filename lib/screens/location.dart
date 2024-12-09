import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoga_app/constants/colors.dart';
import 'package:yoga_app/screens/home_page.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 150, left: 30),
            child: Container(
              height: 187.68,
              width: 172.09,
              child: Image.asset('assets/locationimg.png'),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              'Hi ! Make your location \n         allow with us',
              style:
                  GoogleFonts.ptSans(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'Set your location to start find trainer \n                      around you',
              style:
                  GoogleFonts.ptSans(fontSize: 15, color: AppColors.textColor),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => HomePage(),
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
                  begin: Alignment.centerLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/vector.png'),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Use your location',
                      style: GoogleFonts.ptSans(
                          color: AppColors.primaryColor, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'We only access your location while ou are using \n                          this location app  ',
              style:
                  GoogleFonts.ptSans(fontSize: 15, color: AppColors.textColor),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              SizedBox(
                width: 90,
              ),
              ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
                  colors: [AppColors.lineerStart, AppColors.lineerEnd],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(bounds),
                child: Text(
                  'Or',
                  style: GoogleFonts.ptSans(fontSize: 18),
                ),
              ),
              Text(
                ' set your location manually',
                style: GoogleFonts.ptSans(fontSize: 18),
              ),
              SizedBox(
                width: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
