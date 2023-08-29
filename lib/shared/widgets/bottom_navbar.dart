import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ButtomNavbar extends StatelessWidget {
  const ButtomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> bottomNavbar = {
      "Beranda": Icons.home,
      "Promo": Icons.percent_rounded,
      "Pesanan": Icons.shopping_bag_rounded,
      "Chat": Icons.chat
    };

    return Positioned(
      bottom: 0,
      left: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 80,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 10,
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                bottomNavbar.length,
                (index) => SizedBox(
                      child: Column(
                        children: [
                          Icon(
                            bottomNavbar.values.elementAt(index),
                            color: const Color.fromARGB(255, 138, 138, 138),
                            size: 30,
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          AutoSizeText(
                            bottomNavbar.keys.elementAt(index),
                            minFontSize: 10,
                            maxLines: 1,
                            style: const TextStyle(fontSize: 14),
                          )
                        ],
                      ),
                    )),
          ),
        ),
      ),
    );
  }
}
