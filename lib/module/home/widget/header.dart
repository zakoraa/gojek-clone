import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> action = {
      "Bayar": Icons.arrow_upward,
      "Top Up": Icons.add,
      "Eksplor": Icons.rocket
    };
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.only(left: 15),
      height: 90,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFF0281A0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 70,
            width: MediaQuery.of(context).size.width * 0.35,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/gopay_logo.png",
                    width: 50,
                  ),
                  const Text(
                    "Rp 100.000.000.000",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const AutoSizeText(
                    "Klik & cek riwayat",
                    maxLines: 1,
                    minFontSize: 8,
                    maxFontSize: 10,
                    style: TextStyle(
                        color: Color(0xFF00880F),
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 5.0,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                    action.length,
                    (index) => Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.width * 0.05,
                              width: MediaQuery.of(context).size.width * 0.05,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Icon(
                                  action.values.elementAt(index),
                                  size:
                                      MediaQuery.of(context).size.width * 0.045,
                                  color: const Color(0xFF0281A0),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              action.keys.elementAt(index),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ))),
          )
        ],
      ),
    );
  }
}
