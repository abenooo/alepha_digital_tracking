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
        children: [
          Center(
            child: Image.asset('asset/onboarding/onboarding1.gif'),
          ),
           Center(
            child: Image.asset('asset/onboarding/onboarding2.gif'),
          ),
           Center(
            child: Image.asset('asset/onboarding/onboarding3.gif'),
          ),
           Center(
            child: Image.asset('asset/onboarding/onboarding4.gif'),
          )
        ],
      ),
    );
}
}
