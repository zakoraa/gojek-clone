import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class GopayLater extends StatelessWidget {
  const GopayLater({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/images/baru_gojek.jpg",
      "assets/images/baru_gojek2.png",
      "assets/images/baru_gojek3.jpg",
      "assets/images/baru_gojek4.jpg",
    ];
    return SizedBox(
      height: 300,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Image.asset("assets/images/gopay_logo.png", width: 70),
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: AutoSizeText(
              "Lebih Ringan tiap Senin 🤩",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              minFontSize: 12,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: AutoSizeText(
              "Karena ada traktiran cicilan 3 bulan 0% Gopay Later di Tokopedia + BEBAS ongkir dengan min. belanja 100RB.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              minFontSize: 10,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 150,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (context, index) => Padding(
                padding: index == images.length - 1
                    ? const EdgeInsets.only(left: 15, right: 15)
                    : const EdgeInsets.only(left: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(images[index]),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
