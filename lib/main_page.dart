import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gojek/module/chat/view/chat_view.dart';
import 'package:gojek/module/home/view/home_view.dart';
import 'package:gojek/module/order/view/order_view.dart';
import 'package:gojek/module/promo/view/promo_view.dart';
import 'package:gojek/shared/blocs/buildPageCubit/build_page_cubit.dart';
import 'package:gojek/shared/widgets/bottom_navbar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BuildPageCubit>(
      create:(context) =>  BuildPageCubit(),
      child: BlocBuilder<BuildPageCubit, BottomNavBarTab>(
        builder: (context, state) {
          return Scaffold(
            body: Stack(
              children: [buildPage(state, context), const BottomNavbar()],
            ),
          );
        },
      ),
    );
  }
}

Widget buildPage(BottomNavBarTab page, BuildContext context) {
  switch (page) {
    case BottomNavBarTab.beranda:
      return const HomeView();
    case BottomNavBarTab.promo:
      return const PromoView();
    case BottomNavBarTab.pesanan:
      return const OrderView();
    case BottomNavBarTab.chat:
      return const ChatView();
    default:
      return const HomeView();
  }
}
