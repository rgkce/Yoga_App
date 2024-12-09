import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoga_app/constants/colors.dart';
import 'package:yoga_app/constants/training_list.dart';
import 'package:yoga_app/screens/training_detail.dart';
import 'package:yoga_app/widgets/training.dart';
import 'package:yoga_app/widgets/yoga_image_card.dart';

import '../constants/yoga_image_list.dart';
import 'bottomnavbar.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            children: [
              Image.asset('assets/home_rectangle.png'),
              Image.asset('assets/splash_screen.png'),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              'Profile',
                              style: GoogleFonts.ptSans(
                                  color: AppColors.primaryColor, fontSize: 18),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.edit,
                          color: AppColors.primaryColor,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset('assets/profil2.png'),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Text(
                              'Brooklyn Simmons',
                              style: GoogleFonts.ptSans(
                                  color: AppColors.primaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      '1,420',
                                      style: GoogleFonts.ptSans(
                                          color: AppColors.primaryColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Follower',
                                      style: GoogleFonts.ptSans(
                                          color: AppColors.primaryColor,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '730',
                                      style: GoogleFonts.ptSans(
                                          color: AppColors.primaryColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Following',
                                      style: GoogleFonts.ptSans(
                                          color: AppColors.primaryColor,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Image.asset('assets/time_bar.png'),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Statictics',
                              style: GoogleFonts.ptSans(
                                  color: AppColors.titleColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'This week',
                              style: GoogleFonts.ptSans(
                                  fontSize: 10, color: AppColors.textColor),
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                'See all',
                                style: GoogleFonts.ptSans(
                                    fontSize: 10, color: AppColors.textColor),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 10,
                                color: AppColors.textColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 126,
                          width: 328,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey.shade100,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Calories',
                                    style: GoogleFonts.ptSans(fontSize: 12),
                                  ),
                                  Text(
                                    '160,5kcal',
                                    style: GoogleFonts.ptSans(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Time',
                                    style: GoogleFonts.ptSans(fontSize: 12),
                                  ),
                                  Text(
                                    '1:03:30',
                                    style: GoogleFonts.ptSans(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100, top: 20),
                          child: Image.asset('assets/haftalıkgrafik.png'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'My training',
                          style: GoogleFonts.ptSans(
                              color: AppColors.titleColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                'See all',
                                style: GoogleFonts.ptSans(
                                    fontSize: 10, color: AppColors.textColor),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 10,
                                color: AppColors.textColor,
                              ),
                            ],
                          ),
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
                        itemCount: training.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => TrainingDetail(),
                                  ),
                                );
                              },
                              child: TrainingCard(
                                imageTraining: training[index]
                                        ["imageTraining"] ??
                                    'default.png',
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'My yoga photos',
                          style: GoogleFonts.ptSans(
                              color: AppColors.titleColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 165,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                'See all',
                                style: GoogleFonts.ptSans(
                                    fontSize: 10, color: AppColors.textColor),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 10,
                                color: AppColors.textColor,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 118,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: yogaImages.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: YogaImageCard(
                              yogaImages: yogaImages[index]["yogaImage"] ??
                                  'default.png',
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.flash_on_outlined,
          color: AppColors.primaryColor,
        ),
        backgroundColor: AppColors.lineerEnd,
        elevation: 6,
      ),
    );
  }
}
