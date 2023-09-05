import 'package:flutter/material.dart';
import 'package:gojek/module/home/widget/app_bar_costum.dart';
import 'package:gojek/module/home/widget/event.dart';
import 'package:gojek/shared/widgets/gopay_later.dart';
import 'package:gojek/module/home/widget/grid_view_widget.dart';
import 'package:gojek/module/home/widget/header.dart';
import 'package:gojek/module/home/widget/recommendation_place.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, List<String>> eventContent = {
      "assets/images/baru_gojek5.jpg": [
        "Undian periode 1 sebentar lagi!",
        "Semangaat! Masih ada waktu sampai akhir Agustus buat rajin penes Gojek! Mobil baru menantimu~"
      ],
      "assets/images/baru_gojek6.jpg": [
        "Voucher GoRide special buat kamu 🎁",
        "Terimakasih udah setia pake GoRide, yuk pake vouchernya biar perjalanan kamu tambah irit. Klik!"
      ],
      "assets/images/baru_gojek7.jpg": [
        "Hemat terus Tanpa Promo 😎",
        "Udah coba GoCar Hemat belum? Dijamin bikin irit ongkos perjalananmu. Klik"
      ],
    };
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
                  height: 140.0,
                ),
                const Header(),
                const SizedBox(
                  height: 25.0,
                ),
                const GridViewWidget(),
                const RecommendationPlace(),
                const SizedBox(
                  height: 30.0,
                ),
                const GopayLater(
                  title: "Lebih Ringan tiap Senin 🤩",
                  description:
                      "Karena ada traktiran cicilan 3 bulan 0% Gopay Later di Tokopedia + BEBAS ongkir dengan min. belanja 100RB.",
                ),
                Column(
                  children: List.generate(
                      eventContent.length,
                      (index) => Event(
                          image: eventContent.keys.elementAt(index),
                          title: eventContent.values.elementAt(index)[0],
                          description:
                              eventContent.values.elementAt(index)[1])),
                ),
                const SizedBox(
                  height: 80.0,
                ),
              ],
            ),
          ),
          const AppBarCustom(),
        ],
      ),
    ));
  }
}

// Belajar bloc dulu bang
