import 'package:flutter/material.dart';
import 'package:gojek/shared/widgets/circle_skelton.dart';
import 'package:gojek/shared/widgets/skelton.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerChat extends StatelessWidget {
  const ShimmerChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 130.0,
            ),
            const Skelton(height: 10, width: 100),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: List.generate(
                  2,
                  (index) => const Padding(
                        padding: EdgeInsets.only(right: 30),
                        child: Column(
                          children: [
                            CircleSkelton(height: 40, width: 40),
                            SizedBox(
                              height: 5.0,
                            ),
                            Skelton(height: 10, width: 50)
                          ],
                        ),
                      )),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Skelton(height: 10, width: 100),
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
                            height: 20.0,
                          ),
                        ],
                      )),
            )
          ],
        ),
      ),
    );
  }
}
