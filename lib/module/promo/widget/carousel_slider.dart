import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gojek/module/promo/bloc/carouselBloc/carousel_event.dart';
import 'package:gojek/module/promo/data/interesting_promo_list.dart';
import 'package:gojek/shared/theme/color.dart';

import '../bloc/carouselBloc/carousel_bloc.dart';
import '../bloc/carouselBloc/carousel_state.dart';

class CarouselSliderPromo extends StatelessWidget {
  const CarouselSliderPromo({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CarouselBloc(),
      child: SizedBox(
        height: 250,
        width: MediaQuery.of(context).size.width,
        child:
            BlocBuilder<CarouselBloc, CarouselState>(builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Biar makin hemat",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              CarouselSlider(
                  items: products
                      .map((event) => SizedBox(
                            height: 40,
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                event["image"],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ))
                      .toList(),
                  options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        state.selectedIndex = index;
                        BlocProvider.of<CarouselBloc>(context)
                            .add(CarouselEvent());
                      },
                      viewportFraction: 0.85,
                      height: 170,
                      autoPlay: true,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 500))),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: DotsIndicator(
                  dotsCount: products.length,
                  position: state.selectedIndex,
                  decorator: const DotsDecorator(
                      activeColor: CustomColor.darkGreen,
                      color: Color.fromARGB(255, 218, 216, 216)),
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
