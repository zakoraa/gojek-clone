import 'package:flutter/material.dart';
import 'package:gojek/shared/widgets/grid_view_search.dart';

class SearchHistory extends StatelessWidget {
  const SearchHistory({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> searchHistories = [
      "KFC",
      "Bangor",
      "Pizza",
      "The Park",
      "Mie Gacoan",
      "Martabak",
      "Pisang Lumer"
    ];
    return GridViewSearch(title: "Pernah kamu cari", gridList: searchHistories);
  }
}
