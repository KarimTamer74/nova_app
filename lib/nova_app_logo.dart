// nova_app_logo.dart
import 'package:flutter/material.dart';
import 'package:nova_app/app_assets.dart';

class NovaAppLogo extends StatelessWidget {
  const NovaAppLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppImages.appLogo, height: 50),
        SizedBox(width: 12),
        Text(
          "NOVA",
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
