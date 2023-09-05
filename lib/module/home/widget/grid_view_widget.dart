import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, List<dynamic>> gridMap = {
      "GoRide": ["assets/gridHeader/go_ride.png", const Color(0xFF00AA12)],
      "GoCar": ["assets/gridHeader/go_car.png", const Color(0xFF00AA12)],
      "GoFood": ["assets/gridHeader/go_food.png", const Color(0xFFED2739)],
      "GoSend": ["assets/gridHeader/go_send.png", const Color(0xFF00AA12)],
      "GoMart": ["assets/gridHeader/go_mart.png", const Color(0xFFED2739)],
      "GoPulsa": ["assets/gridHeader/go_pulsa.png", const Color(0xFF00AED5)],
      "GoClub": ["assets/gridHeader/go_club.png", Colors.transparent],
      "Lainnya": ["assets/gridHeader/lainnya.png", const Color(0xFFEDEDED)],
    };
    return SizedBox(
      height: 180,
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
        ),
        itemCount: gridMap.length,
        itemBuilder: (context, index) => Column(
          children: [
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  color: gridMap.values.elementAt(index)[1]),
              child: Center(
                child: Image.asset(
                  "${gridMap.values.elementAt(index)[0]}",
                  height: 25,
                  width: 25,
                ),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Text(
              gridMap.keys.elementAt(index),
              style: const TextStyle(fontWeight: FontWeight.w100, fontSize: 13),
            )
          ],
        ),
      ),
    );
  }
}
