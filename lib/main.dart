import '/screens/onboarding/screen1.dart';
import '/screens/onboarding/screen2.dart';
import '/screens/onboarding/screen3.dart';
import '/screens/onboarding/screen4.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
  PageController pageController = PageController();
  String buttonText = "Skip";
  int currentPageIndicator = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (index) {
              currentPageIndicator = index;
              if (index == 3) {
                buttonText = "Finish";
              } else {
                buttonText = "Skip";
              }
              setState(() {});
            },
            children: const [
              Screen1(),
              Screen2(),
              Screen3(),
              Screen4(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(),
                GestureDetector(
                  onTap: () {
                    print("navigate to home");
                  },
                  child: Text(buttonText),
                ), // Fixed: Added parentheses to SizedBox
                SmoothPageIndicator(
                  controller: pageController,
                  count: 4,
                ),
                currentPageIndicator == 3
                    ? const SizedBox(
                        width: 10,
                      )
                    : GestureDetector(
                        onTap: () {
                          // print("button is clicked");
                          pageController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: const Text("Next"),
                      ), // Fixed: Added Text widget for "Skip"
              ],
            ),
          ),
        ],
      ),
    );
  }
}
