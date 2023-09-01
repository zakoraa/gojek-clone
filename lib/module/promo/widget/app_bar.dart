import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gojek/shared/theme/color.dart';

class PromoAppBar extends StatelessWidget {
  const PromoAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 120,
        color: Colors.white,
        child: Stack(
          children: [
            const Positioned(
              left: 15,
              bottom: 20,
              child: AutoSizeText(
                "Promo",
                maxLines: 1,
                minFontSize: 20,
                style: TextStyle(
                  fontSize: 25,
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
