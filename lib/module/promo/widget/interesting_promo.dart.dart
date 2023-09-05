import 'package:flutter/material.dart';

import '../../../shared/theme/color.dart';

class InterestingPromotion extends StatelessWidget {
  const InterestingPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> promo = ["Apa aja", "GoFood", "GoPay", "GoPayLater", "Others"];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            "Promo menarik buat kamu",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 30,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: promo.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: index == 0
                  ? const EdgeInsets.only(left: 15)
                  : const EdgeInsets.only(left: 0),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                margin: index == promo.length - 1
                    ? const EdgeInsets.only(right: 15)
                    : const EdgeInsets.only(right: 10),
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 1,
                      color: CustomColor.grey,
                    )),
                child: Center(
                  child: Text(
                    promo[index],
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
