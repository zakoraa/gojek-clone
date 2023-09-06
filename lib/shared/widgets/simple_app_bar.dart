import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gojek/shared/theme/color.dart';

class SimpleAppBar extends StatelessWidget {
  const SimpleAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              left: 15,
              bottom: 15,
              child: AutoSizeText(
                title,
                maxLines: 1,
                minFontSize: 18,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: CustomColor.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
