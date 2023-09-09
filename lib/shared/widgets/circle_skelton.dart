import 'package:flutter/material.dart';

class CircleSkelton extends StatelessWidget {
  const CircleSkelton({super.key, required this.height, required this.width});

  final double height, width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration:
          const BoxDecoration(color: Colors.black, shape: BoxShape.circle),
    );
  }
}
