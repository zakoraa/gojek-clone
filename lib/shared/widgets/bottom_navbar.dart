import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gojek/shared/blocs/buildPageCubit/build_page_cubit.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> bottomNavbar = {
      "Beranda": Icons.home,
      "Promo": Icons.percent_rounded,
      "Pesanan": Icons.shopping_bag_rounded,
      "Chat": Icons.chat
    };

    return BlocBuilder<BuildPageCubit, BottomNavBarTab>(
        builder: (context, state) => Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 10,
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                        bottomNavbar.length,
                        (index) => GestureDetector(
                              onTap: () => context
                                  .read<BuildPageCubit>()
                                  .selectedPage(BottomNavBarTab.values[index]),
                              child: SizedBox(
                                child: Column(
                                  children: [
                                    Icon(
                                      bottomNavbar.values.elementAt(index),
                                      color:
                                          state == BottomNavBarTab.values[index]
                                              ? const Color.fromARGB(
                                                  255, 0, 202, 20)
                                              : const Color.fromARGB(
                                                  255, 138, 138, 138),
                                      size: 30,
                                    ),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    AutoSizeText(
                                      bottomNavbar.keys.elementAt(index),
                                      minFontSize: 10,
                                      maxLines: 1,
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: state ==
                                                  BottomNavBarTab.values[index]
                                              ? const Color(0xFF00AA12)
                                              : Colors.black),
                                    )
                                  ],
                                ),
                              ),
                            )),
                  ),
                ),
              ),
            ));
  }
}
