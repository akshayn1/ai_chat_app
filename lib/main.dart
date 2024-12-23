import 'package:ai_chat_app/Backend/models/chat_model.dart';
import 'package:ai_chat_app/Presentation/Home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  await Hive.initFlutter();
  WidgetsFlutterBinding.ensureInitialized();
  if (!Hive.isAdapterRegistered(ChatModelAdapter().typeId)) {
    Hive.registerAdapter(ChatModelAdapter());
  }
  if (!Hive.isAdapterRegistered(MessageModelAdapter().typeId)) {
    Hive.registerAdapter(MessageModelAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AI Chat App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
