import 'package:flutter/material.dart';
import 'package:gojek/shared/theme/color.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      child: Container(
        padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
        height: 155,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 25,
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                const Text(
                  "Pencarian",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
            const SizedBox(
              height: 25.0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 5.0,
              ),
              decoration: BoxDecoration(
                color: CustomColor.lightGrey,
                borderRadius: const BorderRadius.all(
                  Radius.circular(20.0),
                ),
                border: Border.all(
                  width: 1.0,
                  color: const Color.fromARGB(255, 225, 225, 225),
                ),
              ),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.search),
                  ),
                  Expanded(
                    child: TextFormField(
                      cursorColor: CustomColor.darkGreen,
                      initialValue: null,
                      decoration: const InputDecoration.collapsed(
                        filled: true,
                        fillColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        hintText: "Cari Layanan, makanan, & tujuan",
                      ),
                      onFieldSubmitted: (value) {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
