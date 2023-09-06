import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gojek/shared/theme/color.dart';

import '../data/shortcuts.dart';

class ShortCut extends StatelessWidget {
  const ShortCut({super.key});

  @override
  Widget build(BuildContext context) {
   
    return SizedBox(
      height: 240,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "Pintasan",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 170,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: shortcuts.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                margin: index == shortcuts.length - 1
                    ? const EdgeInsets.symmetric(horizontal: 15, vertical: 5)
                    : const EdgeInsets.only(left: 15, top: 5, bottom: 5),
                height: 150,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        color: CustomColor.grey,
                        blurRadius: 2,
                        spreadRadius: 1),
                  ],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/goride-logo.png",
                            height: 20,
                            width: 20,
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          const Text(
                            "goride",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      AutoSizeText(
                        shortcuts[index]["address"]!,
                        maxLines: 1,
                        minFontSize: 10,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      AutoSizeText(
                        shortcuts[index]["detail_address"]!,
                        maxLines: 2,
                        minFontSize: 10,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 12),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      AutoSizeText(
                       shortcuts[index]["distance"]!,
                        maxLines: 2,
                        minFontSize: 10,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
