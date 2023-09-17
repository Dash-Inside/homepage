import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:responsive_builder/responsive_builder.dart';

part './home_page/title_widget.dart';
part './home_page/works_widget.dart';
part './home_page/about_us_widget.dart';

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
              final double topShrinkOffset = size.height * 0.2 * offScreenPrecent;
              final double realOffset = scrollOffset + topShrinkOffset / 2;
              final bool isMoveImage = scrollOffset >= size.height * 0.8;

              return Offset(0, !isMoveImage ? realOffset : realOffset - (scrollOffset - size.height * 0.8));
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
          // ScrollTransformItem(
          //   offsetBuilder: (_) => Offset(0, -size.height),
          //   builder: (_) {
          //     return const AboutUsWidget();
          //   },
          // ),
          ScrollTransformItem(
            builder: (_) {
              return const WorksWidget();
            },
          ),
        ],
      ),
    );
  }
}
