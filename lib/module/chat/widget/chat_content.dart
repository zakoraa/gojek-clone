import 'package:flutter/material.dart';

import '../../../shared/theme/color.dart';

class ChatContent extends StatelessWidget {
  const ChatContent(
      {super.key,
      this.image = "assets/images/avatar_gojek.png",
      required this.title,
      required this.chat,
      required this.date});

  final String image, title, chat, date;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       
        Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  image,
                  height: 50,
                  width: 50,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                chat,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    color: CustomColor.darkGrey, fontSize: 14),
                              )
                            ],
                          ),
                        ),
                        Text(
                          date,
                          style: const TextStyle(
                            fontSize: 12,
                            color: CustomColor.darkGrey,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width - 75,
                      color: CustomColor.grey,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
        height: 20.0,
        ),
      ],
    );
  }
}
