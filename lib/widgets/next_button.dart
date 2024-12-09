import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class NextButton extends StatefulWidget {
  final Widget nextPage;
  const NextButton({super.key, required this.nextPage});

  @override
  State<NextButton> createState() => _NextButtonState();
}

class _NextButtonState extends State<NextButton> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            height: 54,
            width: 107,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: AppColors.primaryColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 13.0),
                  child: Text(
                    'Next',
                    style: GoogleFonts.ptSans(
                        color: AppColors.titleColor, fontSize: 16),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  height: 27,
                  width: 27,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                      colors: [
                        AppColors.lineerStart,
                        AppColors.lineerEnd,
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => widget.nextPage),
                      );
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.primaryColor,
                      size: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
