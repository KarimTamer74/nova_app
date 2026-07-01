// login_form_section.dart
import 'package:flutter/material.dart';
import 'package:nova_app/app_assets.dart';
import 'package:nova_app/app_colors.dart';
import 'package:nova_app/custom_elevated_button.dart';
import 'package:nova_app/custom_text_filed.dart';
import 'package:nova_app/or_divider_widget.dart';
import 'package:nova_app/social_button_widget.dart';

class LoginFormSection extends StatelessWidget {
  const LoginFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextField(
          label: "Username or Email",
          hint: "alexj@gmail.com",
        ),

        const SizedBox(height: 20),

        const CustomTextField(label: "Password", hint: "********"),

        const SizedBox(height: 15),

        Row(
          children: [
            Checkbox(value: false, onChanged: (_) {}),

            const Text("Remember me"),

            const Spacer(),

            TextButton(
              onPressed: () {},
              child: const Text(
                "Forgot Password?",
                style: TextStyle(color: AppColors.buttonClr),
              ),
            ),
          ],
        ),

        const SizedBox(height: 20),

        CustomElevatedButton(text: "Sign In", onPressed: () {}),

        const SizedBox(height: 25),

        const OrDividerWidget(),

        const SizedBox(height: 25),

        const Row(
          children: [
            SocialButtonWidget(title: "Google", iconPath: AppIcons.googleIcon),

            SizedBox(width: 15),

            SocialButtonWidget(title: "Apple", iconPath: AppIcons.appleIcon),
          ],
        ),
      ],
    );
  }
}
