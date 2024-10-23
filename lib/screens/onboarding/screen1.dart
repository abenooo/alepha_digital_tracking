import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('asset/onboarding/onboarding1.gif'),
        const SizedBox(
          height: 40.0,
        ),
        const Text(
          "This is screen one showing about track",
          style: TextStyle(
              color: Colors.black, 
              fontSize: 22.0, 
              fontWeight: FontWeight.w400
              ),
              textAlign: TextAlign.center,
        ),
        
       const SizedBox(height: 20),
       Container(
         padding: const EdgeInsets.symmetric(horizontal: 20),
         child: Text(
           "We Need To Work Hard, We Need To Work Hard, We Need To Work",
           style: TextStyle(
             color: Colors.black.withOpacity(0.6),
             fontSize: 16,
             fontWeight: FontWeight.w300,
           ),
           textAlign: TextAlign.center,
         ),
       ),
      ],
    );
  }
}
