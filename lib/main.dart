import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gojek/shared/blocs/buildPageCubit/build_page_cubit.dart';
import 'package:gojek/shared/blocs/randomListCubit/random_list_cubit.dart';
import 'package:gojek/shared/theme/custom_theme.dart';
import 'main_page.dart';

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
          BlocProvider<BuildPageCubit>(
            create: (context) => BuildPageCubit(),
          ),
          BlocProvider<RandomListCubit>(
            create: (context) => RandomListCubit(),
          )
        ],
        child: const MainPage(),
      ),
    );
  }
}


// flutter run -d chrome --web-renderer html 
