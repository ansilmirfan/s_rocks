import 'package:flutter/material.dart';
import 'package:s_rocks/res/style/app_colors.dart';
import 'package:s_rocks/res/style/radius.dart';
import 'package:s_rocks/utils/extensions/space_extension.dart';
import 'package:s_rocks/view/widgets/svg_image.dart';

class SearchField extends StatelessWidget {
  SearchField({super.key});

  // Reusable border style with no visible border
  final InputBorder _border = OutlineInputBorder(
    borderRadius: AppRadius.smallRadius,
    borderSide: BorderSide.none,
  );

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search "Punjabi Lyrics"',
        hintStyle: TextStyle(color: AppColors.grey),
        contentPadding: EdgeInsets.zero,
        prefixIcon: _buildPrefixIcon(),
        suffixIcon: _buildSuffixIcon(),
        fillColor: AppColors.darkGrey,
        filled: true,
        border: _border,
        enabledBorder: _border,
        focusedBorder: _border,
        disabledBorder: _border,
      ),
    );
  }

  /// Search icon at the beginning of the field
  Widget _buildPrefixIcon() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: UnconstrainedBox(
        child: SvgImage(
          assetPath: "assets/images/icons/search.svg",
          height: 20,
        ),
      ),
    );
  }

  /// Mic icon and separator at the end of the field
  Widget _buildSuffixIcon() {
    return UnconstrainedBox(
      child: Row(
        spacing: 15,
        children: [
          Text(
            "|",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w100),
          ),
          SvgImage(assetPath: "assets/images/icons/mic.svg", height: 20),
          1.0.w, // Spacing
        ],
      ),
    );
  }
}
