import 'package:flutter/material.dart';

class ParallaxAsset extends StatelessWidget {
  const ParallaxAsset({
    super.key,
    required this.assetPath,
    this.top,
  });

  final double? top;
  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: SizedBox(
        height: 350,
        child: Image(
          image: AssetImage(assetPath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
