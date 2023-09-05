import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gojek/shared/theme/color.dart';

class PromoHeader extends StatelessWidget {
  const PromoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> headerContent = [
      {
        "sum": 24,
        "type": "Vouchers",
        "desc": "11 akan hangus",
        "color": Colors.orange
      },
      {
        "sum": 0,
        "type": "Langganan",
        "desc": "Lagi aktif",
        "color": Colors.pink.shade400
      },
      {
        "sum": 0,
        "type": "Misions",
        "desc": "Lagi berjalan",
        "color": Colors.blue.shade400
      },
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
          headerContent.length,
          (index) => Container(
                padding: const EdgeInsets.all(10),
                height: 85,
                width: MediaQuery.of(context).size.width * 0.28,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(color: CustomColor.boxShadow, blurRadius: 0.5)
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${headerContent[index]["sum"]}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        )
                      ],
                    ),
                    AutoSizeText(
                      headerContent[index]["type"],
                      maxLines: 1,
                      minFontSize: 10,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 11),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    AutoSizeText(
                      headerContent[index]["desc"],
                      maxLines: 1,
                      minFontSize: 10,
                      style: const TextStyle(
                          fontWeight: FontWeight.w300, fontSize: 11),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    Container(
                      height: 5,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: headerContent[index]["color"],
                          borderRadius: BorderRadius.circular(20)),
                    )
                  ],
                ),
              )),
    );
  }
}
