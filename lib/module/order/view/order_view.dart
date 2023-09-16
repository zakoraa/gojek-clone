import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gojek/coming_soon.dart';
import 'package:gojek/module/order/bloc/orderLoadingBloc/order_loading_bloc.dart';
import 'package:gojek/module/order/blocCubit/order_page_cubit.dart';
import 'package:gojek/module/order/widget/app_bar_order.dart';
import 'package:gojek/module/order/widget/history.dart';
import 'package:gojek/module/order/widget/empty.dart';
import 'package:gojek/module/order/widget/shimmer.dart';

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
            children: [buildOrderTab(state, context), const AppBarOrder()],
          ),
        ),
      ),
    )));
  }
}

Widget buildOrderTab(dynamic state, BuildContext context) {
  switch (state) {
    case OrderTab.riwayat:
      return BlocBuilder<OrderLoadingBloc, OrderLoadingState>(
        builder: (context, loadingState) {
          if (loadingState is OrderLoaded) {
            return OrderHistory(
              state: state,
              loadingState: loadingState,
            );
          } else if (loadingState is OrderLoading) {
            return const OrderShimmer();
          }
          return Container();
        },
      );
    case OrderTab.dalamProses:
      return const OrderEmpty(
        image: "assets/images/dalam-proses.jpeg",
        title: "Pesan Gojek, yuk!",
        description: "Driver kami akan dengan senang hati membantumu.",
      );
    case OrderTab.terjadwal:
      return const OrderEmpty(
        image: "assets/images/terjadwal.jpg",
        title: "Jadwalin Pesananmu, yuk?",
        description: "Biar nanti nggak repot, jadwalin aja.",
      );
    default:
      return const ComingSoon();
  }
}
