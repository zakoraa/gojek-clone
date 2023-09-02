import 'package:flutter/material.dart';
import 'package:gojek/module/promo/list/interesting_promo_list.dart';
import 'package:gojek/module/promo/widget/app_bar.dart';
import 'package:gojek/module/promo/widget/carousel_slider.dart';
import 'package:gojek/module/promo/widget/code.dart';
import 'package:gojek/shared/widgets/gopay_later.dart';
import 'package:gojek/shared/widgets/product_promo.dart';

import '../widget/header_promo.dart';
import '../widget/interesting_promo.dart.dart';

class PromoView extends StatelessWidget {
  const PromoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const SizedBox(
                    height: 150.0,
                  ),
                  const PromoHeader(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const PromoCode(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const InterestingPromotion(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const CarouselSliderPromo(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ProductPromo(
                      productsPromotions: productPromotions1,
                      title: "Pesen lagi dengan promo!",
                      description: "Rasa yang pernah ada, tapi diskon"),
                  ProductPromo(
                      productsPromotions: productPromotions2,
                      title: "Hemat ongkir 8rb",
                      description: "Pesen yang nikmat di resto-resto ini"),
                  const GopayLater(
                      title: "Cashback QRIS Unlimited?💸",
                      description:
                          "Cuma Rp1! CAshback bayar QRIS gak habis-habis Cek Sekarang!"),
                  ProductPromo(
                      productsPromotions: productPromotions3,
                      title: "Promo menarik dari resto populer",
                      description:
                          "Buat kenyangin perut kamu, kamu yang tentuin!"),
                  ProductPromo(
                      productsPromotions: productPromotions4,
                      title: "Resto dengan Rating jempolan",
                      description: "Disponsori"),
                  const SizedBox(
                    height: 70.0,
                  ),
                ],
              ),
            ),
            const PromoAppBar()
          ],
        ),
      ),
    );
  }
}
