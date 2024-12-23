import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble(
      {super.key,
      required this.message,
      required this.alligment,
      required this.color,
      required this.time});
  final String message;
  final Alignment alligment;
  final Color color;
  final String time;

  @override
  Widget build(BuildContext context) {
    MainAxisAlignment mainAxisAlignment;
    CrossAxisAlignment crossAxisAlignment;
    if (alligment == Alignment.centerLeft) {
      mainAxisAlignment = MainAxisAlignment.start;
      crossAxisAlignment = CrossAxisAlignment.start;
    } else {
      mainAxisAlignment = MainAxisAlignment.end;
      crossAxisAlignment = CrossAxisAlignment.end;
    }
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
      child: Container(
        alignment: alligment,
        child: Column(
          crossAxisAlignment: crossAxisAlignment,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Text(
                    message,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: mainAxisAlignment,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Text(time),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
