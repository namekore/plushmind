import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  final TextEditingController _classeController = TextEditingController();

  @override
  void dispose() {
    _classeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(175, 38, 38, 1),
        body: Padding(
          padding: EdgeInsetsGeometry.all(0.4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(Icons.assessment_outlined),
                onPressed: () => Navigator.pop(context),
              ),
              IconButton(
                icon: Icon(Icons.settings_outlined),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
