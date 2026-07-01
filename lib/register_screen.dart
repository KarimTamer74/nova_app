// register_screen.dart
import 'package:flutter/material.dart';
import 'package:nova_app/nova_app_logo.dart';
import 'package:nova_app/register_form_section.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NovaAppLogo(),

              const SizedBox(height: 40),

              /// Title
              const Text(
                "Create account",
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 8),

              Text(
                "Join NOVA today",
                style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
              ),

              const SizedBox(height: 32),

              /// Register Form
              const RegisterFormSection(),

              const SizedBox(height: 28),

              /// Bottom Text
              Center(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.grey.shade700, fontSize: 15),
                    children: [
                      const TextSpan(text: "Already have an account? "),
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "Sign in",
                            style: TextStyle(
                              color: Color(0xff3563E9),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
