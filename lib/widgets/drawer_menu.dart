import 'package:flutter/material.dart';
import 'package:yoga_app/widgets/drawer_eleman.dart';

import '../constants/colors.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        height: 780,
        width: 278,
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
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close),
                    color: AppColors.primaryColor,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  DrawerEleman(icon: Icon(Icons.person), title: 'Account'),
                  Divider(
                    thickness: 0.1,
                  ),
                  DrawerEleman(
                      icon: Icon(Icons.notifications), title: 'Notifications'),
                  Divider(
                    thickness: 0.1,
                  ),
                  DrawerEleman(icon: Icon(Icons.question_mark), title: 'FAQ'),
                  Divider(
                    thickness: 0.1,
                  ),
                  DrawerEleman(
                      icon: Icon(Icons.pie_chart), title: 'Statistics'),
                  Divider(
                    thickness: 0.1,
                  ),
                  DrawerEleman(icon: Icon(Icons.language), title: 'Language'),
                  Divider(
                    thickness: 0.1,
                  ),
                  DrawerEleman(icon: Icon(Icons.star), title: 'Rate us'),
                  Divider(
                    thickness: 0.1,
                  ),
                  DrawerEleman(icon: Icon(Icons.people), title: 'About'),
                  Divider(
                    thickness: 0.1,
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  DrawerEleman(icon: Icon(Icons.logout), title: 'Logout'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
