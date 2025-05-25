import 'package:flutter/material.dart';
import 'package:s_rocks/res/style/app_colors.dart';
import 'package:s_rocks/res/style/radius.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  final double height;
  final double? width;
  const ShimmerWidget({super.key, required this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.darkGrey,
      highlightColor: AppColors.grey,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: AppRadius.smallRadius,
        ),
        height: height,
        width: width,
      ),
    );
  }
}
