import 'package:flutter/material.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Coming Soon",style: TextStyle(
        fontSize: 30
        ),),
      ),
    );
  }
}