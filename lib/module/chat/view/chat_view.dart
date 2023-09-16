import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gojek/module/chat/bloc/chatLoadingBloc/chat_loading_bloc.dart';
import 'package:gojek/module/chat/widget/chat_content.dart';
import 'package:gojek/module/chat/widget/header.dart';
import 'package:gojek/module/chat/widget/shimmer_chat.dart';
import 'package:gojek/shared/widgets/simple_app_bar.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            BlocBuilder<ChatLoadingBloc, ChatLoadingState>(
                builder: (context, state) {
              if (state is ChatLoaded) {
                return const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 130.0,
                      ),
                      ChatHeader(),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        "Chat Kamu",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ChatContent(
                        title: "Gopay Later",
                        chat: "Sekarang Senin bisa bikin kamu hepi loh.",
                        date: "26/08/23",
                      ),
                      ChatContent(
                        title: "Go Food",
                        chat:
                            "Meskipun masuk ke tanggal tua, kamu tetap bisa penuhi semua kebutuhan dan harapan kamu loh",
                        date: "26/08/23",
                      ),
                      ChatContent(
                        title: "Jeklin",
                        chat:
                            "HARI CICILAN TERMURAH! 🚨\nJeklin mau kasih tau kalau kamu bisa lebih tenang penuhi kebutuhan tengah tahun",
                        date: "14/07/23",
                      ),
                    ],
                  ),
                );
              } else if (state is ChatLoading) {
                return const ShimmerChat();
              } else {
                return Container();
              }
            }),
            const SimpleAppBar(title: "Chat")
          ],
        ),
      ),
    );
  }
}
