// login_screen.dart
import 'package:flutter/material.dart';
import 'package:nova_app/app_colors.dart';
import 'package:nova_app/login_form_section.dart';
import 'package:nova_app/nova_app_logo.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //* App Logo
              NovaAppLogo(),
              const SizedBox(height: 40),

              const Text(
                "Sign in",
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 8),

              Text(
                "Welcome back to NOVA",
                style: TextStyle(color: Colors.grey.shade600),
              ),

              const SizedBox(height: 35),

              const LoginFormSection(),

              const SizedBox(height: 25),

              Center(
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(color: Colors.black87),
                    children: [
                      TextSpan(text: "Don't have an account? "),
                      TextSpan(
                        text: "Create account",
                        style: TextStyle(
                          color: AppColors.buttonClr,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
