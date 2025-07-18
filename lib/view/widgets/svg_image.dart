import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

//custom widget for showing svg image
class SvgImage extends StatelessWidget {
  ///required asset path
  final String assetPath;

  ///optional color
  final Color? color;

  ///optional BoxFit(default value is [BoxFit.fill])
  final BoxFit boxFit;

  ///optional height value
  final double? height;
  const SvgImage({
    super.key,
    required this.assetPath,
    this.boxFit = BoxFit.fill,
    this.color,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetPath,
      fit: boxFit,
      height: height,
      width: height,

      colorFilter:
          color == null ? null : ColorFilter.mode(color!, BlendMode.srcIn),
    );
  }
}
