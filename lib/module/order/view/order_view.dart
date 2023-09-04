import 'package:flutter/material.dart';
import 'package:gojek/module/order/data/goride_histories.dart';
import 'package:gojek/module/order/widget/app_bar_order.dart';
import 'package:gojek/module/order/widget/gopay_transaction.dart';
import '../data/gofood_histories.dart';
import '../widget/gofood_history.dart';
import '../widget/goride_history.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 200.0,
                    ),
                    const GopayTransaction(),
                    Column(
                        children:
                            List.generate(gofoodHistories.length, (index) {
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
                        children:
                            List.generate(goRideHistories.length, (index) {
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
              ),
              const AppBarOrder()
            ],
          ),
        ),
      ),
    );
  }
}
