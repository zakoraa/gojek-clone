import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gojek/shared/theme/color.dart';

class GoRideHistory extends StatelessWidget {
  const GoRideHistory(
      {super.key,
      required this.address,
      required this.date,
      required this.price});

  final String address, date, price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, top: 20),
      width: MediaQuery.of(context).size.width,
      child: Column(children: [
        Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/goride-logo-green.png",
                  height: 40,
                  width: 40,
                ),
                const SizedBox(
                  width: 30.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(address,
                        maxLines: 2,
                        minFontSize: 10,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        )),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      "Sudah sampai tujuan",
                      style: TextStyle(
                          color: CustomColor.darkGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      date,
                      style: const TextStyle(fontSize: 10),
                    )
                  ],
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: AutoSizeText(
                      "Rp.$price",
                      maxLines: 1,
                      minFontSize: 8,
                      style: const TextStyle(
                        fontSize: 12,
                        color: CustomColor.darkGrey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            )),
        const SizedBox(
          height: 15.0,
        ),
        Container(
          height: 1,
          width: MediaQuery.of(context).size.width,
          color: CustomColor.grey,
        )
      ]),
    );
  }
}