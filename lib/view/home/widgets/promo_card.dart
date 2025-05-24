import 'package:flutter/material.dart';
import 'package:s_rocks/res/style/app_colors.dart';
import 'package:s_rocks/utils/extensions/space_extension.dart';
import 'package:s_rocks/view/widgets/custom_text_button.dart';
import 'package:s_rocks/view/widgets/svg_image.dart';

class PromoCard extends StatelessWidget {
  const PromoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppColors.linearGradient,
        borderRadius: BorderRadiusDirectional.vertical(
          bottom: Radius.circular(20),
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          //Svg image disc postioned in bottom left
          Positioned(
            left: -30,
            bottom: 20,
            child: SvgImage(assetPath: "assets/images/disc.svg"),
          ),
          //Svg image piano positioned in bottom right
          Positioned(
            bottom: 20,
            right: -40,
            child: SvgImage(assetPath: "assets/images/piano.svg"),
          ),
          Column(
            spacing: 3,
            children: [
              40.0.h, //top spacing
              //title
              Text(
                "Claim Your",
                style: Theme.of(
                  context,
                ).textTheme.displaySmall?.copyWith(fontSize: 22),
              ),
              //large title
              Text(
                "Free Demo",
                style: Theme.of(
                  context,
                ).textTheme.headlineLarge?.copyWith(fontSize: 45),
              ),
              //Sub title
              Text(
                "for custom Music production",
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w100),
              ),
              5.0.h, //spacing
              //Action button
              CustomTextButton(text: "Book Now"),
              40.0.h, //End spacing
            ],
          ),
        ],
      ),
    );
  }
}
