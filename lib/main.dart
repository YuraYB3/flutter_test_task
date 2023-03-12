import 'package:flutter/material.dart';
import 'package:test_app/View/MainPage/BottomPanel.dart';
import 'package:test_app/View/MainPage/MiddlePanel.dart';
import 'package:test_app/View/MainPage/TopText.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String searchQuery = '';
  TopText topText = TopText();
  BottomPanel bottomPanel = BottomPanel();
  MiddlePanel middlePanel = MiddlePanel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF8EAAFB),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 80),
            TopText().GetStarted(),
            const SizedBox(height: 160),
            middlePanel.CreateMiddlePanel(context)
          ],
        ),
        bottomNavigationBar: bottomPanel.CreateBottomPanel());
  }
}
