import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gojek/shared/theme/color.dart';

class ProductPromo extends StatelessWidget {
  const ProductPromo(
      {super.key,
      required this.title,
      required this.description,
      required this.productsPromotions});

  final String title, description;
  final List<Map<String, dynamic>> productsPromotions;

  @override
  Widget build(BuildContext context) {
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
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              description,
              style: const TextStyle(fontSize: 12),
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
                itemCount: productsPromotions.length,
                itemBuilder: (context, index) {
                  final item = productsPromotions[index];
                  return Container(
                    margin: index == productsPromotions.length - 1
                        ? const EdgeInsets.only(right: 15)
                        : const EdgeInsets.only(right: 0),
                    height: 250,
                    width: 200,
                    child: Stack(
                      children: [
                        Positioned(
                            top: 25,
                            left: 11,
                            child: Transform.rotate(
                              angle: -95,
                              child: Container(
                                height: 10,
                                width: 10,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 195, 49, 39),
                                ),
                              ),
                            )),
                        Container(
                          margin: const EdgeInsets.only(left: 15, bottom: 10),
                          height: 250,
                          width: 200,
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
                                      item["image"],
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
                                      "${item["distance"]} km",
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    AutoSizeText(
                                      item["productName"],
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    ),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star_outlined,
                                          color:
                                              Color.fromARGB(255, 255, 106, 0),
                                          size: 20,
                                        ),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                        AutoSizeText(
                                          "${item["rating"]}",
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
                        Positioned(
                          top: 5,
                          left: 9,
                          child: Container(
                            height: 25,
                            width: 60,
                            decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    topLeft: Radius.circular(10))),
                            child: Center(
                              child: Text(
                                "${item["discount"]}% off",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
