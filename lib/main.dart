import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plushmind/HomePage.dart';
import 'package:plushmind/RatePage.dart';
import 'package:plushmind/widget_test.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PlushMind',
      home: const TestPage(),
    );
  }
}
