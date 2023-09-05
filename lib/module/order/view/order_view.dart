import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gojek/coming_soon.dart';
import 'package:gojek/module/order/blocCubit/order_page_cubit.dart';
import 'package:gojek/module/order/widget/app_bar_order.dart';
import 'package:gojek/module/order/widget/history.dart';
import 'package:gojek/module/order/widget/process.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: BlocProvider(
        create: (context) => OrderTabCubit(),
        child: BlocBuilder<OrderTabCubit, OrderTab>(
          builder: (context, state) => Stack(
            children: [buildOrderTab(state, context), AppBarOrder(state: state)],
          ),
        ),
      ),
    )));
  }
}

Widget buildOrderTab(dynamic state, BuildContext context) {
  switch (state) {
    case OrderTab.riwayat:
      return OrderHistory(state: state);
    case OrderTab.dalamProses:
      return const OrderProcess();
    case OrderTab.terjadwal:
      return const ComingSoon();
    default:
      return OrderHistory(state: state);
  }
}
