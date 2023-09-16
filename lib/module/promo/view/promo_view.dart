import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gojek/module/promo/widget/carousel_slider.dart';
import 'package:gojek/module/promo/widget/code.dart';
import 'package:gojek/module/promo/widget/shimmer_promo.dart';
import 'package:gojek/shared/widgets/gopay_later.dart';
import 'package:gojek/shared/widgets/product_promo.dart';
import 'package:gojek/shared/widgets/simple_app_bar.dart';
import '../bloc/productBloc/product_bloc.dart';
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
              BlocBuilder<ProductBloc, ProductState>(
                builder: (context, state) {
                  if (state is ProductLoaded) {
                    return SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 130.0,
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
                              productsPromotions: state.result1,
                              title: "Pesen lagi dengan promo!",
                              description: "Rasa yang pernah ada, tapi diskon"),
                          ProductPromo(
                              productsPromotions: state.result2,
                              title: "Hemat ongkir 8rb",
                              description:
                                  "Pesen yang nikmat di resto-resto ini"),
                          const GopayLater(
                              title: "Cashback QRIS Unlimited?💸",
                              description:
                                  "Cuma Rp1! CAshback bayar QRIS gak habis-habis Cek Sekarang!"),
                          ProductPromo(
                              productsPromotions: state.result3,
                              title: "Promo menarik dari resto populer",
                              description:
                                  "Buat kenyangin perut kamu, kamu yang tentuin!"),
                          ProductPromo(
                              productsPromotions: state.result4,
                              title: "Resto dengan Rating jempolan",
                              description: "Disponsori"),
                          const SizedBox(
                            height: 70.0,
                          ),
                        ],
                      ),
                    );
                  } else if (state is ProductLoading) {
                    return const PromoShimmerView();
                  } else {
                    return Container();
                  }
                },
              ),  
            const SimpleAppBar(title: "Promo")
          ],
        ),
      ),
    );
  }
}
