import 'package:ai_chat_app/Presentation/Core/constants.dart';
import 'package:ai_chat_app/Presentation/Home/widgets/chat_bubble.dart';
import 'package:ai_chat_app/Presentation/Home/widgets/message_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        leadingWidth: 55,
        leading: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                scale: 20,
                "https://media.istockphoto.com/id/1437816897/photo/business-woman-manager-or-human-resources-portrait-for-career-success-company-we-are-hiring.jpg?s=612x612&w=is&k=20&c=tw9TuTigzhSlLA_b1Avy0X6GNF9ZFVvgTHIZ9i68Q0I="),
          ),
        ),
        title: const Center(
          child: Text(
            "Luna",
            style: TextStyle(
                fontFamily: "Cream Cake", color: Colors.white, fontSize: 40),
          ),
        ),
        backgroundColor: kPrimaryColor,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                AssetImage("Assets/icons/menu_icon.png"),
                color: kButtonColor,
              ))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: const [
                      ChatBubble(
                        message: "Hello Whats Up?",
                        alligment: Alignment.centerRight,
                        color: kLightColor,
                        time: "9:30pm",
                      ),
                      ChatBubble(
                        message: "I'm good,Thank you for asking.",
                        alligment: Alignment.centerLeft,
                        color: kLightShadeColor,
                        time: "9:30pm",
                      ),
                      ChatBubble(
                        message: "Tell Me a joke",
                        alligment: Alignment.centerRight,
                        color: kLightColor,
                        time: "9:33pm",
                      ),
                      ChatBubble(
                        message:
                            "Sure! Here's one :Why don’t programmers like nature Because it has too many bugs! 😄",
                        alligment: Alignment.centerLeft,
                        color: kLightShadeColor,
                        time: "9:33pm",
                      ),
                    ],
                  ),
                ),
                const Divider(),
                const MessageBar()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
