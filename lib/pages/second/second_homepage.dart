import 'package:flutter/material.dart';
import 'package:paralax_scroll/pages/first/homepage.dart';
import 'package:paralax_scroll/pages/widgets/parallax_asset.dart';

class SecondHomePage extends StatefulWidget {
  const SecondHomePage({super.key});

  @override
  State<SecondHomePage> createState() => _SecondHomePageState();
}

class _SecondHomePageState extends State<SecondHomePage> {
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
              top5 -= notification.scrollDelta! / 2.0;
              top4 -= notification.scrollDelta! / 1.9;
              top3 -= notification.scrollDelta! / 1.6;
              top2 -= notification.scrollDelta! / 1.3;
              top1 -= notification.scrollDelta! / 1.0;
            });
          }
          return true;
        },
        child: Stack(
          children: [
            //parallax asset

            ParallaxAsset(
              top: top5,
              assetPath: 'assets/second/asset_5.png',
            ),
            ParallaxAsset(
              top: top4,
              assetPath: 'assets/second/asset_4.png',
            ),
            ParallaxAsset(
              top: top3,
              assetPath: 'assets/second/asset_3.png',
            ),
            ParallaxAsset(
              top: top2,
              assetPath: 'assets/second/asset_2.png',
            ),
            ParallaxAsset(
              top: top1,
              assetPath: 'assets/second/asset_1.png',
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
                    color: const Color(0xFF0081BF),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ));
                      },
                      child: Text(
                        'LET\'S GO',
                        style: textThemeData.headline4,
                      ),
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
