import 'package:flutter/material.dart';
import 'package:gojek/module/search/widget/search_app_bar.dart';

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
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 200.0,
                ),
                SearchHistory(),
              ],
            ),
            SearchAppBar(),
          ],
        ),
      ),
    );
  }
}
