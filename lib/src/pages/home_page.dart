import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

part './home_page/title_widget.dart';

class HomePage extends StatelessWidget {
  static const _backgroundAssetName = 'assets/home_background.jpg';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: ScrollTransformView(
        children: <ScrollTransformItem>[
          ScrollTransformItem(
            offsetBuilder: (scrollOffset) {
              final double offScreenPrecent = min(scrollOffset / size.height, 1.0);
              final double topShrink = size.height * 0.2 * offScreenPrecent;

              return Offset(0, scrollOffset + topShrink / 2);
            },
            builder: (scrollOffset) {
              final double offScreenPrecent = min(scrollOffset / size.height, 1.0);

              return Image.asset(
                _backgroundAssetName,
                height: size.height - (size.height * 0.2 * offScreenPrecent),
                width: size.width - (size.width * 0.2) * offScreenPrecent,
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
                colorBlendMode: BlendMode.color,
                color: Colors.black,
              );
            },
          ),
          ScrollTransformItem(
            offsetBuilder: (_) => Offset(0, -size.height),
            builder: (_) {
              return const TitleWidget();
            },
          ),
        ],
      ),
    );
  }
}
