import 'package:flutter/material.dart';
import 'package:gojek/module/promo/widget/app_bar.dart';
import 'package:gojek/module/promo/widget/code.dart';
import 'package:gojek/shared/widgets/product_promo.dart';

import '../widget/header_promo.dart';
import '../widget/interesting .dart';

class PromoView extends StatelessWidget {
  const PromoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: const Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 150.0,
                  ),
                  PromoHeader(),
                  SizedBox(
                    height: 20.0,
                  ),
                  PromoCode(),
                  SizedBox(
                    height: 20.0,
                  ),
                  InterestingPromotion(),
                  SizedBox(
                    height: 20.0,
                  ),
                  ProductPromo()
                ],
              ),
            ),
            PromoAppBar()
          ],
        ),
      ),
    );
  }
}
