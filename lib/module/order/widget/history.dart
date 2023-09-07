import 'package:flutter/material.dart';

import '../blocCubit/order_page_cubit.dart';
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
          : const Column(
              children: [
                SizedBox(
                  height: 200.0,
                ),
                GopayTransaction(),
                GoFoodHistory(),
                GoRideHistory(),
                SizedBox(
                  height: 100,
                )
              ],
            ),
    );
  }
}
