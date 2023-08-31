import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gojek/shared/theme/color.dart';

class SearchCategory extends StatelessWidget {
  const SearchCategory({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, String> categories = {
      "assets/images/gofood-logo.png": "Restoran",
      "assets/images/logo_lokasi.png": "Tujuan",
      "assets/images/logo_keranjang.png": "Belanja",
      "assets/images/logo_gojek.png": "Layanan",
      "assets/images/logo_tagihan.png": "Tagihan",
      "assets/images/logo_tanda_tanya.png": "Bantuan",
    };
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Padding(
        padding: EdgeInsets.only(left: 15),
        child: Text(
          "Kategori Pencarian",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const SizedBox(
        height: 20.0,
      ),
      SizedBox(
          height: 120,
          width: MediaQuery.of(context).size.width,
          child: GridView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                crossAxisSpacing: 15,
                mainAxisExtent: MediaQuery.of(context).size.width * 0.45,
                maxCrossAxisExtent: 60),
            itemCount: categories.length,
            itemBuilder: (context, index) => Container(
              margin: index == categories.length - 1 ||
                      index == categories.length - 2
                  ? const EdgeInsets.only(left: 15, right: 15)
                  : const EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: CustomColor.grey)),
              child: Center(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10.0,
                    ),
                    Image.asset(
                      categories.keys.elementAt(index),
                      height: 25,
                      width: 25,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    AutoSizeText(
                      categories.values.elementAt(index),
                      maxLines: 1,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ))
    ]);
  }
}
