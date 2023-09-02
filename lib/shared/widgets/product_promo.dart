import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gojek/module/promo/list/interesting_promo_list.dart';
import 'package:gojek/shared/theme/color.dart';

class ProductPromo extends StatelessWidget {
  const ProductPromo(
      {super.key, required this.title, required this.description});

  final String title, description;

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> productPromotions = List.from(products);
    return SizedBox(
      height: 350,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              description,
              style: const TextStyle(fontSize: 14),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
            height: 260,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: productPromotions.length,
              itemBuilder: (context, index) => Container(
                margin: index == productPromotions.length - 1
                    ? const EdgeInsets.only(right: 15, left: 15, bottom: 10)
                    : const EdgeInsets.only(left: 15, bottom: 10),
                height: 250,
                width: 170,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 3,
                          color: CustomColor.boxShadow,
                          offset: const Offset(0, 2))
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            productPromotions[index]["image"],
                            fit: BoxFit.cover,
                          )),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${productPromotions[index]["distance"]} km",
                            style: const TextStyle(fontSize: 12),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          AutoSizeText(
                            productPromotions[index]["productName"],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star_outlined,
                                color: Color.fromARGB(255, 255, 106, 0),
                                size: 20,
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              AutoSizeText(
                                "${productPromotions[index]["rating"]}",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(fontSize: 12),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
