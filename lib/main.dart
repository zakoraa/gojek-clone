import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gojek/module/chat/bloc/chatLoadingBloc/chat_loading_bloc.dart';
import 'package:gojek/module/order/bloc/orderLoadingBloc/order_loading_bloc.dart';
import 'package:gojek/module/promo/bloc/productBloc/product_bloc.dart';
import 'package:gojek/shared/theme/custom_theme.dart';
import 'main_page.dart';
import 'module/home/bloc/homeLoadingBloc/home_loading_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: CustomTheme.theme1,
        home: MultiBlocProvider(
          providers: [
            BlocProvider<HomeLoadingBloc>(
                create: (context) =>
                    HomeLoadingBloc()..add(OnHomeLoadingEventCalled())),
            BlocProvider<ProductBloc>(
                create: (context) =>
                    ProductBloc()..add(OnProductEventCalled())),
            BlocProvider(
              create: (context) =>
                  OrderLoadingBloc()..add(OnOrderLoadingEventCalled()),
            ),
            BlocProvider(
                create: (context) =>
                    ChatLoadingBloc()..add(OnChatLoadingEventCalled()))
          ],
          child: const MainPage(),
        ));
  }
}


// flutter run -d chrome --web-renderer html 
