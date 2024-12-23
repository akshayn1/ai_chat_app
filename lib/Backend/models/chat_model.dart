import 'package:hive_flutter/adapters.dart';

part 'chat_model.g.dart';

@HiveType(typeId: 1)
class ChatModel {
  @HiveField(0)
  final int chatId;
  @HiveField(1)
  final List<MessageModel> messages;

  ChatModel({required this.chatId, required this.messages});
}

@HiveType(typeId: 2)
class MessageModel {
  @HiveField(0)
  final String message;
  @HiveField(1)
  final int datetime;
  MessageModel({required this.message, required this.datetime});
}
