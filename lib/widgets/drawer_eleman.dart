import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoga_app/constants/colors.dart';

class DrawerEleman extends StatelessWidget {
  final String title;
  final Icon icon;
  const DrawerEleman({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: icon,
            color: AppColors.primaryColor,
          ),
          SizedBox(
            width: 30,
          ),
          Text(
            title,
            style:
                GoogleFonts.ptSans(color: AppColors.primaryColor, fontSize: 18),
          ),
        ],
      ),
      height: 55,
    );
  }
}
