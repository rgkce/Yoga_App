import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoga_app/constants/colors.dart';
import 'package:yoga_app/constants/more_yoga.dart';

import '../widgets/more_yoga_card.dart';

class TrainingDetail extends StatefulWidget {
  const TrainingDetail({super.key});

  @override
  State<TrainingDetail> createState() => _TrainingDetailState();
}

class _TrainingDetailState extends State<TrainingDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Image.asset(
                    "assets/detail_savannah.png",
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                Image.asset(
                  "assets/detail_appBar.png",
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: 85,
                ),
                Image.asset(
                  "assets/splash_screen.png",
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: AppColors.primaryColor,
                            size: 18,
                          ),
                        ),
                        Text(
                          "Yoga Basics For Beginners",
                          style: GoogleFonts.ptSans(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 111, horizontal: 17),
                          height: 33.06,
                          width: 82.68,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                AppColors.lineerStart,
                                AppColors.lineerEnd,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "New",
                              style: GoogleFonts.ptSans(
                                  color: AppColors.primaryColor, fontSize: 14),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 111, horizontal: 17),
                          height: 33.06,
                          width: 82.68,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                AppColors.lineerStart,
                                AppColors.lineerEnd,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "3/5",
                              style: GoogleFonts.ptSans(
                                  color: AppColors.primaryColor, fontSize: 14),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Savannah Nguyen",
                          style: GoogleFonts.ptSans(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        Text(
                          "Yoga for beginners",
                          style: GoogleFonts.ptSans(
                              color: AppColors.primaryColor, fontSize: 17),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Complete Bigenners should start here. This bundle  will teach basic yoga posecs to fill with energy and joy. Hope on your mat and start to build......   ",
                        style: GoogleFonts.ptSans(
                            color: AppColors.textColor, fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 100,
                          child: Row(
                            children: [
                              Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                  color: AppColors.button,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Icon(
                                  Icons.menu,
                                  size: 20,
                                  color: AppColors.lineerStart,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Level",
                                    style: GoogleFonts.ptSans(
                                        color: AppColors.textColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "1",
                                    style: GoogleFonts.ptSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          width: 100,
                          child: Row(
                            children: [
                              Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                  color: AppColors.button,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Icon(
                                  Icons.calendar_month_outlined,
                                  size: 20,
                                  color: AppColors.lineerStart,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Weeks",
                                    style: GoogleFonts.ptSans(
                                        color: AppColors.textColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "3",
                                    style: GoogleFonts.ptSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          width: 100,
                          child: Row(
                            children: [
                              Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                  color: AppColors.button,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Icon(
                                  Icons.timer_outlined,
                                  size: 20,
                                  color: AppColors.lineerStart,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Mins",
                                    style: GoogleFonts.ptSans(
                                        color: AppColors.textColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "22",
                                    style: GoogleFonts.ptSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'More Most Popular Courses ',
                          style: GoogleFonts.ptSans(
                              color: AppColors.titleColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 118,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: moreYoga.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: GestureDetector(
                              onTap: () {},
                              child: MoreYogaCard(
                                moreYogas: moreYoga[index]["moreYogas"] ??
                                    'default.png',
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
