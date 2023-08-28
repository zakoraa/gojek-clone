import 'package:flutter/material.dart';
import 'package:gojek/module/home/view/home_view.dart';
import 'package:gojek/shared/theme/custom_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.theme1,
      home: const HomeView(),
    );
  }
}


// flutter run -d chrome --web-renderer html 
