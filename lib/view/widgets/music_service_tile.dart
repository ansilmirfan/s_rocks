import 'package:flutter/material.dart';
import 'package:s_rocks/models/music_service_model.dart';
import 'package:s_rocks/res/style/app_colors.dart';
import 'package:s_rocks/res/style/radius.dart';
import 'package:s_rocks/utils/extensions/route_extension.dart';
import 'package:s_rocks/view/view_page/view_page.dart';
import 'package:s_rocks/view/widgets/svg_image.dart';

/// Takes a [MusicServiceModel] which holds all necessary data for rendering.
class MusicServiceTile extends StatelessWidget {
  final MusicServiceModel model;

  const MusicServiceTile({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // Adds spacing around each tile
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),

      // Container with background image and border
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.darkGrey),
          borderRadius: AppRadius.mediumRadius,

          // Background image with customizable alignment
          image: DecorationImage(
            alignment: model.alignment,
            opacity: 0.2,
            colorFilter: ColorFilter.mode(Colors.white12, BlendMode.srcATop),
            fit: BoxFit.fitWidth,
            image: AssetImage(model.bgImagePath),
          ),
        ),

        // Main content of the tile
        child: ListTile(
          onTap: () {
            context.push(ViewPage(text: model.title));
          },

          // Spacing inside the tile
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),

          // Rounded corners
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),

          // Icon image on the left
          leading: SvgImage(height: 55, assetPath: model.leadingIconPath),

          // Title text
          title: Text(model.title, style: TextStyle(fontSize: 19)),

          //Description text or subtitle
          subtitle: Text(model.description),

          // Arrow icon on the right
          trailing: Icon(Icons.arrow_right_outlined, size: 35),
        ),
      ),
    );
  }
}
