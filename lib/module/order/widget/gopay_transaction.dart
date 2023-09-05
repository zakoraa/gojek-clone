import 'package:flutter/material.dart';
import 'package:gojek/shared/theme/color.dart';

class GopayTransaction extends StatelessWidget {
  const GopayTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border.all(color: CustomColor.grey),
          borderRadius: BorderRadius.circular(15),
          color: CustomColor.lightGrey),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/gopay_logo_rounded.png",
                height: 30,
                width: 30,
              ),
              const SizedBox(
                width: 10.0,
              ),
              const Text(
                "Transaksi GoPay",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: CustomColor.darkGrey,
            size: 20,
          )
        ],
      ),
    );
  }
}
