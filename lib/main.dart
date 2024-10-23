import 'package:alepha_digital_tracking/screens/onboarding/screen1.dart';
import 'package:alepha_digital_tracking/screens/onboarding/screen2.dart';
import 'package:alepha_digital_tracking/screens/onboarding/screen3.dart';
import 'package:alepha_digital_tracking/screens/onboarding/screen4.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Alpha Digital Tracking'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        children: const[
           Screen1(),
           Screen2(),
           Screen3(),
           Screen4(),
        ],
      ),
    );
  }
}
