import 'package:alepha_digital_tracking/Test.dart';
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
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Image.asset(
                      'asset/onboarding/Welcome Screen.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              // const SizedBox(height: 40),
              const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Text(
                      'Welcome',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Have a better sharing experience',
                      style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),
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
                isOutlined: false,
              ),
              const SizedBox(height: 16),
              LoginButton(
                text: 'Login',
                onPressed: () {
                  // TODO: Implement login
                },
                isOutlined: true,
              ),
              const MyWidget(),
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
  final bool isOutlined;

  const LoginButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.isOutlined = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: isOutlined
              ? const BorderSide(color: Color(0xFF008955), width: 2)
              : BorderSide.none,
        ),
        backgroundColor: isOutlined ? Colors.white : const Color(0xFF008955),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          color: isOutlined ? const Color(0xFF008955) : Colors.white,
        ),
      ),
    );
  }
}
