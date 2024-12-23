import 'dart:developer';

import 'package:ai_chat_app/Backend/domain/service.dart';
import 'package:ai_chat_app/Presentation/Core/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageBar extends StatelessWidget {
  const MessageBar({super.key});

  @override
  Widget build(BuildContext context) {
    final gemini = GeminiApiService();
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Center(
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.add),
                style: const ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll<Color>(kLightShadeColor)),
              ),
              Expanded(
                child: TextFormField(
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Type Here..",
                    hintStyle: TextStyle(),
                  ),
                ),
              ),
              IconButton(
                onPressed: () async {
                  Map<String, dynamic> replay =
                      await gemini.generateContent("Hello");
                  log(replay.toString());
                },
                icon: const Image(image: AssetImage("Assets/icons/send.png")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
