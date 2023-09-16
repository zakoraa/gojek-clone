import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gojek/module/order/bloc/orderLoadingBloc/order_loading_bloc.dart';
import 'package:gojek/module/order/blocCubit/order_page_cubit.dart';
import 'package:gojek/shared/theme/color.dart';

class AppBarOrder extends StatelessWidget {
  const AppBarOrder({super.key});
  @override
  Widget build(BuildContext context) {
    Map<String, String> appBarMap = {
      "Riwayat": "GoRide",
      "Dalam Proses": "Gofood",
      "Terjadwal": "Status"
    };
    return Positioned(
        top: 0,
        left: 0,
        child: BlocBuilder<OrderTabCubit, OrderTab>(
          builder: (context, state) => Container(
            height: state != OrderTab.riwayat ? 140 : 180,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "Pesanan",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: CustomColor.grey,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    children: List.generate(
                        appBarMap.length,
                        (index) =>
                            BlocBuilder<OrderLoadingBloc, OrderLoadingState>(
                              builder: (context, loadingState) =>
                                  GestureDetector(
                                onTap: loadingState is OrderLoaded
                                    ? () => context
                                        .read<OrderTabCubit>()
                                        .selectTab(OrderTab.values[index])
                                    : () {},
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Column(
                                    children: [
                                      Text(
                                        appBarMap.keys.elementAt(index),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color:
                                                state == OrderTab.values[index]
                                                    ? Colors.black
                                                    : Colors.grey),
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      state == OrderTab.values[index]
                                          ? Container(
                                              width: 50,
                                              height: 2,
                                              color: CustomColor.darkGreen,
                                            )
                                          : const SizedBox.shrink()
                                    ],
                                  ),
                                ),
                              ),
                            )),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                state != OrderTab.riwayat
                    ? const SizedBox.shrink()
                    : Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: List.generate(
                            appBarMap.length,
                            (index) => Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              margin: const EdgeInsets.only(right: 15),
                              height: 35,
                              decoration: BoxDecoration(
                                  color: CustomColor.lightGrey,
                                  border: Border.all(
                                      width: 1, color: CustomColor.grey),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                  child: index == appBarMap.length - 1
                                      ? Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              appBarMap.values.elementAt(
                                                  appBarMap.length - 1),
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),
                                            const SizedBox(
                                              width: 5.0,
                                            ),
                                            const Icon(
                                              Icons.arrow_drop_down,
                                              size: 25,
                                            )
                                          ],
                                        )
                                      : Text(
                                          appBarMap.values.elementAt(index),
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        )),
                            ),
                          ),
                        )),
              ],
            ),
          ),
        ));
  }
}
