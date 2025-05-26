import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:s_rocks/utils/extensions/space_extension.dart';
import 'package:s_rocks/view/home/widgets/promo_card.dart';
import 'package:s_rocks/view/home/widgets/search_field.dart';
import 'package:s_rocks/view/widgets/loading_tile.dart';
import 'package:s_rocks/view/widgets/music_service_tile.dart';
import 'package:s_rocks/view/widgets/svg_image.dart';
import 'package:s_rocks/view_model/music_service_view_model.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<MusicServiceViewModel>().getAll();
        },
        child: CustomScrollView(
          slivers: [
            _buildAppBar(context),
            SliverList(
              delegate: SliverChildListDelegate([
                PromoCard(),
                _buildText(context),
                _buildList(),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Consumer<MusicServiceViewModel> _buildList() {
    return Consumer<MusicServiceViewModel>(
      builder: (context, value, child) {
        //if the data is loading there will be four loadingtile
        if (value.loading) {
          return Column(children: List.generate(4, (index) => LoadingTile()));
        } else {
          //if the data is available then the data will be shown
          return Column(
            children: List.generate(
              value.data.length,
              (index) => MusicServiceTile(model: value.data[index]),
            ),
          );
        }
      },
    );
  }

  SizedBox _buildText(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Center(
        child: Text(
          "Hire  hand-picked Pros for popular music services",
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
