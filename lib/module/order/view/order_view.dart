import 'package:flutter/material.dart';
import 'package:gojek/module/order/widget/app_bar_order.dart';
import 'package:gojek/module/order/widget/gopay_transaction.dart';

import '../widget/gofood_history.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: const Stack(
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(
                      height: 180.0,
                    ),
                    GopayTransaction(),
                    GoFoodHistory(),
                    GoFoodHistory(),
                    GoFoodHistory(),
                    GoFoodHistory(),
                    GoFoodHistory(),
                  ],
                ),
              ),
              AppBarOrder()
            ],
          ),
        ),
      ),
    );
  }
}
