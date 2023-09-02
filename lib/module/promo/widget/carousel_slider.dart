import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gojek/module/promo/list/interesting_promo_list.dart';

class CarouselSliderPromo extends StatelessWidget {
  const CarouselSliderPromo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "Biar makin hemat",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          CarouselSlider(
              items: productPromotions1
                  .map((event) => SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            event["image"],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ))
                  .toList(),
              options: CarouselOptions(
                  viewportFraction: 0.85, height: 170, autoPlay: true))
        ],
      ),
    );
  }
}
