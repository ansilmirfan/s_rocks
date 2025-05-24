import 'package:flutter/material.dart';
import 'package:s_rocks/res/style/app_colors.dart';
import 'package:s_rocks/view/bottom_nav/bottom_nav.dart';
import 'package:s_rocks/view/widgets/svg_image.dart';

class BottomNavItemWidget extends StatelessWidget {
  final BottomNavItem item;
  final bool isSelected;
  final VoidCallback onTap;

  const BottomNavItemWidget({
    super.key,
    required this.item,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          //Widget that indicates the selected item
          TopIndicator(isVisible: isSelected),
          const SizedBox(height: 5),
          SvgImage(
            height: 20,
            assetPath: item.assetPath,
            boxFit: BoxFit.fitWidth,
            color: isSelected ? AppColors.white : AppColors.grey,
          ),

          Text(
            item.label,
            style: TextStyle(
              fontSize: 13,
              color: isSelected ? AppColors.white : AppColors.grey,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

/// Animated top indicator (small half circle above icon)
class TopIndicator extends StatelessWidget {
  final bool isVisible;

  const TopIndicator({super.key, required this.isVisible});

  @override
  Widget build(BuildContext context) {
    return AnimatedSlide(
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
      offset: isVisible ? const Offset(0, -0.5) : const Offset(0, -1),
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 400),
        opacity: isVisible ? 1.0 : 0.0,
        child: CircleAvatar(backgroundColor: AppColors.white, radius: 7),
      ),
    );
  }
}
