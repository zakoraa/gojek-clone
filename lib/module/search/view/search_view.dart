import 'package:flutter/material.dart';
import 'package:gojek/module/search/widget/category.dart';
import 'package:gojek/module/search/widget/popular_searches.dart';
import 'package:gojek/module/search/widget/search_app_bar.dart';
import 'package:gojek/module/search/widget/shortcut.dart';

import '../widget/history.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: const Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 170.0,
                  ),
                  SearchHistory(),
                  SizedBox(
                    height: 10.0,
                  ),
                  SearchCategory(),
                  SizedBox(
                    height: 20.0,
                  ),
                  ShortCut(),
                  PopularSearches()
                ],
              ),
            ),
            SearchAppBar(),
          ],
        ),
      ),
    );
  }
}
