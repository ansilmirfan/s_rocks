import 'package:flutter/material.dart';
import 'package:s_rocks/res/style/app_colors.dart';
import 'package:s_rocks/view/bottom_nav/widgets/bottom_nav_item.dart';
import 'package:s_rocks/view/home/home.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

/// Model representing each bottom nav item
class BottomNavItem {
  final String assetPath;
  final String label;

  BottomNavItem({required this.assetPath, required this.label});
}

/// Bottom nav items
final List<BottomNavItem> bottomNavItems = [
  BottomNavItem(assetPath: "assets/images/icons/s-rocks.svg", label: "Home"),
  BottomNavItem(assetPath: "assets/images/icons/news.svg", label: "News"),
  BottomNavItem(
    assetPath: "assets/images/icons/track-box.svg",
    label: "TrackBox",
  ),
  BottomNavItem(
    assetPath: "assets/images/icons/projects.svg",
    label: "Projects",
  ),
];
//List of widget for each bottomnav item
List<Widget> children = List.generate(
  4,
  (index) => index == 0 ? Home() : SizedBox(),
);

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[selectedIndex],
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  /// Bottom navigation bar with custom items
  Widget _buildBottomBar() {
    return Container(
      height: 80,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: AppColors.black,
        border: Border(top: BorderSide(color: AppColors.grey, width: 1)),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(bottomNavItems.length, (index) {
          final item = bottomNavItems[index];
          return Expanded(
            child: BottomNavItemWidget(
              item: item,
              isSelected: selectedIndex == index,
              onTap: () => setState(() => selectedIndex = index),
            ),
          );
        }),
      ),
    );
  }
}
