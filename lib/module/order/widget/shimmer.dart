import 'package:flutter/material.dart';
import 'package:gojek/shared/widgets/skelton.dart';
import 'package:shimmer/shimmer.dart';

class OrderShimmer extends StatelessWidget {
  const OrderShimmer({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 200.0,
              ),
              Skelton(
                height: 60,
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                    3,
                    (index) => Column(
                          children: [
                            Skelton(
                              height: 180,
                              width: MediaQuery.of(context).size.width,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                          ],
                        )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
