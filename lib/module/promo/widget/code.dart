import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gojek/shared/theme/color.dart';

class PromoCode extends StatelessWidget {
  const PromoCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 45,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(color: CustomColor.grey),
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 111, 0),
                    borderRadius: BorderRadius.circular(20)),
                child: const Icon(
                  Icons.percent_rounded,
                  size: 15,
                  color: Colors.white,
                )),
            const SizedBox(
              width: 10.0,
            ),
            const AutoSizeText(
              "Masukkan kode Promo",
              maxLines: 1,
              minFontSize: 10,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            )
          ]),
          const Icon(
            Icons.arrow_forward_ios,
            size: 15,
          )
        ],
      ),
    );
  }
}
