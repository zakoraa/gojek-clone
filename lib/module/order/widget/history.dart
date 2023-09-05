import 'package:flutter/material.dart';

import '../blocCubit/order_page_cubit.dart';
import '../data/gofood_histories.dart';
import '../data/goride_histories.dart';
import 'gofood_history.dart';
import 'gopay_transaction.dart';
import 'goride_history.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key, required this.state});
  final dynamic state;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: state != OrderTab.riwayat
          ? const SizedBox.shrink()
          : Column(
              children: [
                const SizedBox(
                  height: 200.0,
                ),
                const GopayTransaction(),
                Column(
                    children: List.generate(gofoodHistories.length, (index) {
                  final item = gofoodHistories[index];
                  return GoFoodHistory(
                    title: item["title"],
                    item: item["item"],
                    package: item["package"],
                    status: item["status"],
                    date: item["date"],
                    price: item["price"],
                  );
                })),
                Column(
                    children: List.generate(goRideHistories.length, (index) {
                  final item = goRideHistories[index];
                  return GoRideHistory(
                    address: item["address"]!,
                    date: item["date"]!,
                    price: item["price"]!,
                  );
                })),
                const SizedBox(
                  height: 100,
                )
              ],
            ),
    );
  }
}
