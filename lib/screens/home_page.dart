import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoga_app/constants/latest_list.dart';
import 'package:yoga_app/constants/popular_lists.dart';
import 'package:yoga_app/constants/video_lists.dart';
import 'package:yoga_app/screens/profil_page.dart';
import 'package:yoga_app/widgets/category_card.dart';
import 'package:yoga_app/widgets/drawer_menu.dart';
import 'package:yoga_app/widgets/latest_blog.dart';
import 'package:yoga_app/widgets/popular_card.dart';
import 'package:yoga_app/widgets/video_card.dart';

import '../constants/category_list.dart';
import '../constants/colors.dart';
import 'bottomnavbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      backgroundColor: AppColors.primaryColor,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            children: [
              Image.asset('assets/home_rectangle.png'),
              Image.asset('assets/splash_screen.png'),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 24, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Builder(builder: (context) {
                          return IconButton(
                            onPressed: () => Scaffold.of(context).openDrawer(),
                            icon: Icon(Icons.menu),
                            color: AppColors.primaryColor,
                          );
                        }),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Raytory Roxty',
                              style: GoogleFonts.ptSans(
                                color: AppColors.primaryColor,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'ID: Rax4738723',
                              style: GoogleFonts.ptSans(
                                color: AppColors.primaryColor,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size(0, 0),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ProfilPage(),
                              ),
                            );
                          },
                          child: Image.asset(
                            'assets/profil1.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 44,
                      width: 328,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Search',
                              style: GoogleFonts.ptSans(
                                  color: AppColors.textColor, fontSize: 15),
                            ),
                            Icon(
                              Icons.search,
                              color: AppColors.textColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 55),
                    Row(
                      children: [
                        const SizedBox(width: 40),
                        Row(
                          children: [
                            Image.asset('assets/nokta.png'),
                            const SizedBox(width: 10),
                            Text(
                              'Tomorrow',
                              style: GoogleFonts.ptSans(
                                  color: AppColors.primaryColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(width: 15),
                        Row(
                          children: [
                            Image.asset('assets/nokta.png'),
                            const SizedBox(width: 10),
                            Text(
                              'Today',
                              style: GoogleFonts.ptSans(
                                  color: AppColors.primaryColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(width: 15),
                        Row(
                          children: [
                            Image.asset('assets/nokta.png'),
                            const SizedBox(width: 10),
                            Text(
                              'Yesterday',
                              style: GoogleFonts.ptSans(
                                  color: AppColors.primaryColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(width: 15),
                        Icon(
                          Icons.calendar_month_outlined,
                          color: AppColors.primaryColor,
                        ),
                      ],
                    ),
                    const SizedBox(height: 13),
                    Padding(
                      padding: const EdgeInsets.only(left: 170),
                      child: Image.asset('assets/ucgen.png'),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Fit Your Body And Make \n Your Healthy.',
                              style: GoogleFonts.ptSans(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Last update 30 min ago.',
                              style: GoogleFonts.ptSans(
                                  fontSize: 13, color: AppColors.textColor),
                            ),
                          ],
                        ),
                        Image.asset('assets/donebutton.png'),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Divider(thickness: 1),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Category of yoga',
                          style: GoogleFonts.ptSans(
                              fontSize: 18, fontWeight: FontWeight.bold),
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
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 69,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: CategoryCard(
                              categoryName: categories[index]["categoryName"] ??
                                  'Category',
                              imagePath:
                                  '${categories[index]["imagePath"] ?? 'default.png'}',
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Popular process',
                          style: GoogleFonts.ptSans(
                              fontSize: 18, fontWeight: FontWeight.bold),
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
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 118,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: popular.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: PopularCard(
                              imagePopular: popular[index]["imagePopular"] ??
                                  'default.png',
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Video courses',
                          style: GoogleFonts.ptSans(
                              fontSize: 18, fontWeight: FontWeight.bold),
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
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 140,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: videos.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: VideoCard(
                              imageVideo:
                                  videos[index]["imageVideo"] ?? 'default.png',
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Our latest blogs',
                      style: GoogleFonts.ptSans(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 209,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: latestBlog.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: LatestBlog(
                              imageLatest: latestBlog[index]["imageLatest"] ??
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
