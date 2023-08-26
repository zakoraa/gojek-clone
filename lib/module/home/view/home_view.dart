import 'package:flutter/material.dart';
import 'package:gojek/module/home/widget/app_bar_costum.dart';
import 'package:gojek/module/home/widget/grid_view_widget.dart';
import 'package:gojek/module/home/widget/header.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          const  AppBarCustom(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Header(),
                const GridViewWidget()
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
