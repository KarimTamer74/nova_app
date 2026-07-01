// or_divider_widget.dart
import 'package:flutter/material.dart';

class OrDividerWidget extends StatelessWidget {
  const OrDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        const Expanded(child: Divider()),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            "or continue with",
            style: TextStyle(
              color: Colors.grey.shade600,
            ),
          ),
        ),

        const Expanded(child: Divider()),
      ],
    );
  }
}