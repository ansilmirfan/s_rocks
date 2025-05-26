import 'package:flutter/material.dart';
import 'package:s_rocks/view/widgets/shimmer.dart';

class LoadingTile extends StatelessWidget {
  const LoadingTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListTile(
        leading: ShimmerWidget(height: 50, width: 50),
        title: ShimmerWidget(height: 15, width: 50),
        subtitle: FractionallySizedBox(
          alignment: Alignment.centerLeft,
          widthFactor: 0.5,
          child: ShimmerWidget(height: 10, width: 50),
        ),
      ),
    );
  }
}
