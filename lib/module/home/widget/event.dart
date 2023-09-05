import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gojek/shared/theme/color.dart';

class Event extends StatelessWidget {
  const Event(
      {super.key,
      required this.image,
      required this.title,
      required this.description});

  final String? image, title, description;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 40),
      height: 270,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: CustomColor.boxShadow,
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: Image.asset(
              image!,
              height: 180,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: AutoSizeText(
              title!,
              maxLines: 1,
              minFontSize: 10,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: AutoSizeText(
                description!,
                maxLines: 3,
                minFontSize: 8,
                style: const TextStyle(fontSize: 12),
              ))
        ],
      ),
    );
  }
}
