import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gojek/shared/theme/color.dart';

class GoFoodHistory extends StatelessWidget {
  const GoFoodHistory(
      {super.key,
      required this.title,
      required this.item,
      required this.package,
      required this.status,
      required this.date,
      required this.price});

  final String title, package, status, date, price;
  final int item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, top: 20),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/gofood-logo.png",
                  height: 50,
                  width: 50,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  title,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "$item item",
                                  style: const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  package,
                                  style: const TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "Rp$price",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: CustomColor.darkGrey,
                                fontSize: 12),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  status,
                                  style: const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  date,
                                  style: const TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: CustomColor.darkGreen),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: const Center(
                                child: Text(
                              "Pesan lagi",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: CustomColor.darkGreen),
                            )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: CustomColor.grey,
          )
        ],
      ),
    );
  }
}