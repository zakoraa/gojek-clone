import 'package:flutter/material.dart';
import 'package:gojek/shared/widgets/skelton.dart';
import 'package:shimmer/shimmer.dart';

class PromoShimmerView extends StatelessWidget {
  const PromoShimmerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 130.0,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      3,
                      (index) => Skelton(
                        height: 85,
                        width: MediaQuery.of(context).size.width * 0.28,
                      ),
                    )),
                const SizedBox(
                  height: 20.0,
                ),
                Skelton(
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Skelton(
                  height: 15,
                  width: 100,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                      4,
                      (index) => const Skelton(
                            height: 30,
                            width: 70,
                          )),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Skelton(
                  height: 15,
                  width: 100,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: List.generate(
                      3,
                      (index) => Column(
                            children: [
                              Skelton(
                                height: 120,
                                width: MediaQuery.of(context).size.width,
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                            ],
                          )),
                )
              ],
            ),
          )),
    );
  }
}

// kenapa tadi gk bisa?????????
