import 'package:flutter/material.dart';
import 'package:gojek/module/promo/widget/app_bar.dart';
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
        child: const Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
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
                  ProductPromo(
                      title: "Pesen lagi dengan promo!",
                      description: "Rasa yang pernah ada, tapi diskon"),
                  ProductPromo(
                      title: "Hemat ongkir 8rb",
                      description: "Pesen yang nikmat di resto-resto ini"),
                  GopayLater(
                      title: "Cashback QRIS Unlimited?💸",
                      description:
                          "Cuma Rp1! CAshback bayar QRIS gak habis-habis Cek Sekarang!"),
                  ProductPromo(
                      title: "Promo menarik dari resto populer",
                      description:
                          "Buat kenyangin perrut kamu, kamu yang tentuin!"),
                  ProductPromo(
                      title: "Resto dengan Rating jempolan",
                      description: "Disponsori"),
                  SizedBox(
                    height: 70.0,
                  ),
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
