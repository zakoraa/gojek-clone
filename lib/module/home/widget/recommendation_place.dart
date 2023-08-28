import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class RecommendationPlace extends StatelessWidget {
  const RecommendationPlace({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, String> recommendedPlaces = {
      "London City": "assets/images/goride-logo.png",
      "Mall Paragon": "assets/images/goride-logo.png",
      "Burger Bangor": "assets/images/gofood-logo.png"
    };

    return SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: recommendedPlaces.length,
          itemBuilder: (context, index) => Container(
                margin: index == recommendedPlaces.length - 1
                    ? const EdgeInsets.only(left: 15, right: 20)
                    : const EdgeInsets.only(left: 15),
                height: 60,
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 199, 199, 199)),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AutoSizeText(
                        recommendedPlaces.keys.elementAt(index),
                        minFontSize: 12,
                        maxLines: 2,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Image.asset(
                        recommendedPlaces.values.elementAt(index),
                        height: 25,
                        width: 25,
                      )
                    ],
                  ),
                ),
              )),
    );
  }
}
