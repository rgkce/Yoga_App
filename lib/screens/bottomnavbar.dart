import 'package:flutter/material.dart';

import '../constants/colors.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const BottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined, size: 24),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.accessibility_outlined, size: 24),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined, size: 24),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_outlined, size: 24),
          label: '',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: AppColors.lineerEnd,
      unselectedItemColor: AppColors.greyColor,
      onTap: onItemTapped,
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.primaryColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    );
  }
}
