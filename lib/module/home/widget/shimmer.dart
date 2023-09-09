import 'package:flutter/material.dart';
import 'package:gojek/shared/widgets/circle_skelton.dart';
import 'package:gojek/shared/widgets/skelton.dart';
import 'package:shimmer/shimmer.dart';

class HomeShimmer extends StatelessWidget {
  const HomeShimmer({super.key});

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 140.0,
              ),
              Skelton(
                height: 90,
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                    4, (index) => const CircleSkelton(height: 50, width: 50)),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                    4, (index) => const CircleSkelton(height: 50, width: 50)),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Skelton(height: 10, width: 100),
              const SizedBox(
                height: 10.0,
              ),
              const Skelton(height: 10, width: 150),
              const SizedBox(
                height: 5.0,
              ),
              const Skelton(height: 10, width: 100),
              const SizedBox(
                height: 5.0,
              ),
              const Skelton(height: 10, width: 200),
              const SizedBox(
                height: 20.0,
              ),
              Skelton(
                  height: 150, width: MediaQuery.of(context).size.width),
              const SizedBox(
                height: 20.0,
              ),
              Skelton(
                  height: 150, width: MediaQuery.of(context).size.width),
            ],
          ),
        ),
      ),
    );
  }
}
