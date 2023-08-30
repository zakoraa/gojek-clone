import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gojek/shared/theme/color.dart';

class SearchHistory extends StatelessWidget {
  const SearchHistory({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> searchHistory = [
      "KFC",
      "Bangor",
      "Pizza",
      "The Park",
      "Mie Gacoan",
      "Martabak",
      "Pisang Lumer"
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Pernah kamu cari",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          SizedBox(
            height: 100,
            child: GridView.builder(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: searchHistory.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 2,
                  crossAxisCount: 5,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemBuilder: (context, index) => Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: CustomColor.lightGrey,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        width: 1,
                        color: const Color.fromARGB(255, 206, 205, 205))),
                child: Center(
                  child: AutoSizeText(
                    searchHistory[index],
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 12,
                      color: CustomColor.darkGreen,
                      fontWeight: FontWeight.bold,
                    ),
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
