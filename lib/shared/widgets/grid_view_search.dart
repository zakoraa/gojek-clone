import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../theme/color.dart';

class GridViewSearch extends StatelessWidget {
  const GridViewSearch(
      {super.key, required this.title, required this.gridList});

  final List<String> gridList;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
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
              itemCount: gridList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 2,
                  crossAxisCount: 5,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemBuilder: (context, index) => Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                    color: CustomColor.lightGrey,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: CustomColor.grey)),
                child: Center(
                  child: AutoSizeText(
                    gridList[index],
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
