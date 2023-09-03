import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gojek/shared/theme/color.dart';

class GoFoodHistory extends StatelessWidget {
  const GoFoodHistory({super.key});

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
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "Burger Bangor Express, Indonesia",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "1 item",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "1 Paket Bengal",
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Makanan udah diantar",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Hari ini, 20:00",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Rp24.500",
                      style: TextStyle(
                          color: Color.fromARGB(255, 92, 92, 92), fontSize: 12),
                    ),
                    Container(
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        border:
                            Border.all(width: 1, color: CustomColor.darkGreen),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: const Center(
                          child: Text(
                        "Pesan lagi",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: CustomColor.darkGreen),
                      )),
                    ),
                  ],
                ))
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
