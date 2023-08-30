import 'package:flutter/material.dart';

import '../../../shared/widgets/grid_view_search.dart';

class PopularSearches extends StatelessWidget {
  const PopularSearches({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> searchHistories = [
      "richeese",
      "chattime",
      "kulo",
      "seblak",
      "kfc",
      "pizza",
      "nasgor",
      "martabak"
    ];
    return GridViewSearch(title: "Pernah kamu cari", gridList: searchHistories);
  }
}
