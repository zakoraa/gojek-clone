import 'package:flutter/material.dart';
import 'package:gojek/shared/theme/color.dart';

class ChatHeader extends StatelessWidget {
  const ChatHeader({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> headerChat = [
      {
        "title": "inbox",
        "icon": Icons.mail,
        "bg_color": const Color.fromARGB(255, 255, 140, 0),
      },
      {
        "title": "Bantuan",
        "icon": Icons.question_answer,
        "bg_color": CustomColor.green
      }
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Pilihan fitur",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          children: List.generate(
              headerChat.length,
              (index) => Padding(
                    padding: const EdgeInsets.only(left: 5, right: 30),
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: headerChat[index]["bg_color"],
                          ),
                          child: Center(
                            child: Icon(
                              headerChat[index]["icon"],
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          headerChat[index]["title"],
                          style: const TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  )),
        )
      ],
    );
  }
}
