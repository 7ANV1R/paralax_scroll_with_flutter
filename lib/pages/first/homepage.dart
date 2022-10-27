import 'package:flutter/material.dart';
import 'package:paralax_scroll/pages/widgets/parallax_asset.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double top11 = 0.0;
  double top10 = 0.0;
  double top9 = 0.0;
  double top8 = 0.0;
  double top7 = 0.0;
  double top6 = 0.0;
  double top5 = 0.0;
  double top4 = 0.0;
  double top3 = 0.0;
  double top2 = 0.0;
  double top1 = 0.0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textThemeData = Theme.of(context).textTheme;
    return Scaffold(
      body: NotificationListener(
        onNotification: (notification) {
          if (notification is ScrollUpdateNotification) {
            if (notification.scrollDelta == null) return true;
            setState(() {
              top11 -= notification.scrollDelta! / 1.0;
              top10 -= notification.scrollDelta! / 1.9;
              top9 -= notification.scrollDelta! / 1.8;
              top8 -= notification.scrollDelta! / 1.7;
              top7 -= notification.scrollDelta! / 1.6;
              top6 -= notification.scrollDelta! / 1.5;
              top5 -= notification.scrollDelta! / 1.4;
              top4 -= notification.scrollDelta! / 1.3;
              top3 -= notification.scrollDelta! / 1.2;
              top2 -= notification.scrollDelta! / 1.2;
              top1 -= notification.scrollDelta! / 1.0;
            });
          }
          return true;
        },
        child: Stack(
          children: [
            //parallax asset
            ParallaxAsset(
              top: top11,
              assetPath: 'assets/first/top-paralax-11.png',
            ),
            ParallaxAsset(
              top: top10,
              assetPath: 'assets/first/top-paralax-10.png',
            ),
            ParallaxAsset(
              top: top9,
              assetPath: 'assets/first/top-paralax-9.png',
            ),
            ParallaxAsset(
              top: top8,
              assetPath: 'assets/first/top-paralax-8.png',
            ),
            ParallaxAsset(
              top: top7,
              assetPath: 'assets/first/top-paralax-7.png',
            ),
            ParallaxAsset(
              top: top6,
              assetPath: 'assets/first/top-paralax-6.png',
            ),
            ParallaxAsset(
              top: top5,
              assetPath: 'assets/first/top-paralax-5.png',
            ),
            ParallaxAsset(
              top: top4,
              assetPath: 'assets/first/top-paralax-4.png',
            ),
            ParallaxAsset(
              top: top3,
              assetPath: 'assets/first/top-paralax-3.png',
            ),
            ParallaxAsset(
              top: top2,
              assetPath: 'assets/first/top-paralax-2.png',
            ),
            ParallaxAsset(
              top: top1,
              assetPath: 'assets/first/top-paralax-1.png',
            ),

            SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                children: [
                  const SizedBox(
                    height: 345,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: size.height,
                    width: size.width,
                    color: const Color(0xFF372d3b),
                    child: Text(
                      'Something',
                      style: textThemeData.headline4,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
