// register_form_section.dart
import 'package:flutter/material.dart';
import 'package:nova_app/custom_elevated_button.dart';
import 'package:nova_app/custom_text_filed.dart';

class RegisterFormSection extends StatelessWidget {
  const RegisterFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Expanded(
              child: CustomTextField(label: "First Name", hint: "Alex"),
            ),

            SizedBox(width: 16),

            Expanded(
              child: CustomTextField(label: "Last Name", hint: "Johnson"),
            ),
          ],
        ),

        const SizedBox(height: 18),

        const CustomTextField(label: "Username", hint: "alexj"),

        const SizedBox(height: 18),

        const CustomTextField(label: "Email", hint: "alex@example.com"),

        const SizedBox(height: 18),

        const CustomTextField(label: "Password", hint: "********"),

        const SizedBox(height: 18),

        const CustomTextField(label: "Confirm Password", hint: "********"),

        const SizedBox(height: 25),

        CustomElevatedButton(text: "Create Account", onPressed: () {}),
      ],
    );
  }
}
