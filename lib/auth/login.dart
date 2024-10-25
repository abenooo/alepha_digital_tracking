import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
        
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 40),
              // Row(
              //   children: [
              //     Container(
              //       width: 60,
              //       height: 60,
              //       decoration: BoxDecoration(
              //         color: Colors.grey[300],
              //         borderRadius: BorderRadius.circular(12),
              //       ),
              //       child:
              //           const Icon(Icons.image, size: 20, color: Colors.grey),
              //     ),
              //     const SizedBox(width: 12),
              //     const Text(
              //       'Alpha Digital Trucking',
              //       style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              //     ),
              //   ],
              // ),
              // const SizedBox(height: 40),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    // color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child:  Center(
                    child:  
                    Image.asset('asset/onboarding/Welcome Screen.png', 
                    fit: BoxFit.cover,),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              // reusable button
               Center(
                child: Column( // Added Column to arrange children vertically
                  mainAxisAlignment: MainAxisAlignment.center, // Center the column
                  children: [
                    const Text('Welcome', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),), 
                    Text(
                      'Have a better sharing experience', // Changed TextSpan to Text
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const SizedBox(height: 16),
              LoginButton(
                text: 'Create an account',
                onPressed: () {
                  // TODO: Implement Create an account 
                },
              ),
              const SizedBox(height: 16),
              LoginButton(
                text: 'Login',
                onPressed: () {
                  // TODO: Implement  login
                },
              ),
              const SizedBox(height: 24),
             
            ],
          ),
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const LoginButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        // primary: Colors.grey[700],
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
