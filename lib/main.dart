import 'package:flutter/material.dart';
import 'package:news_app/Screens/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
