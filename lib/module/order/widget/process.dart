import 'package:flutter/material.dart';

class OrderProcess extends StatelessWidget {
  const OrderProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 170,
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/images/dalam-proses.jpeg",
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "Pesan Gojek, yuk!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                "Driver kami akan dengan senang hati membantumu.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100),
              )
            ],
          ),
        ),
      ),
    );
  }
}
