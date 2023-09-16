// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gojek/module/home/bloc/homeLoadingBloc/home_loading_bloc.dart';
import 'package:gojek/module/search/view/search_view.dart';
import 'package:gojek/shared/theme/color.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 0,
        left: 0,
        child: Container(
          color: CustomColor.darkGreen,
          height: 125,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Material(
                  color: Colors.white,
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(25),
                  child: BlocBuilder<HomeLoadingBloc, HomeLoadingState>(
                    builder: (context, state) => InkWell(
                        borderRadius: BorderRadius.circular(25),
                        onTap: state is HomeLoaded
                            ? () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const SearchView(),
                                    ));
                              }
                            : () {},
                        splashColor: Colors.transparent,
                        child: SizedBox(
                          height: 45,
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10.0,
                              ),
                              const Icon(
                                Icons.search,
                                color: Color.fromARGB(255, 109, 109, 109),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: const Text(
                                  "Cari layanan, makanan, & tujuan",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 109, 109, 109),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.person,
                      size: 35,
                      color: CustomColor.green,
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
