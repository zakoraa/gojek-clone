import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gojek/module/home/view/home_view.dart';
import 'package:gojek/shared/blocs/buildPageCubit/build_page_cubit.dart';
import 'package:gojek/shared/widgets/bottom_navbar.dart';
import 'package:gojek/coming_soon.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BuildPageCubit, BottomNavBarTab>(
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [buildPage(state, context), const BottomNavbar()],
          ),
        );
      },
    );
  }
}

Widget buildPage(BottomNavBarTab page, BuildContext context) {
  switch (page) {
    case BottomNavBarTab.beranda:
      return const HomeView();
    case BottomNavBarTab.promo:
      return const ComingSoon();
    case BottomNavBarTab.pesanan:
      return const ComingSoon();
    case BottomNavBarTab.chat:
      return const ComingSoon();
    default:
      return const HomeView();
  }
}
