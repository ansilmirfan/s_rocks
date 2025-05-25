import 'package:flutter/material.dart';
import 'package:s_rocks/utils/extensions/space_extension.dart';
import 'package:s_rocks/view/home/widgets/promo_card.dart';
import 'package:s_rocks/view/home/widgets/search_field.dart';
import 'package:s_rocks/view/widgets/svg_image.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _buildAppBar(context),
          SliverList(
            delegate: SliverChildListDelegate([
              PromoCard(),
              _buildText(context),
            ]),
          ),
        ],
      ),
    );
  }

  SizedBox _buildText(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Center(
        child: Text(
          "Hire  hand-picked Pros for popular music services",
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  SliverAppBar _buildAppBar(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      title: SearchField(),
      actions: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: SvgImage(
            assetPath: "assets/images/icons/avathar.svg",
            color: Colors.deepPurple,
          ),
        ),
        25.0.w,
      ],
    );
  }
}
