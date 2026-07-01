// social_button_widget.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialButtonWidget extends StatelessWidget {
  const SocialButtonWidget({
    super.key,
    required this.title,
    required this.iconPath,
  });

  final String title;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OutlinedButton.icon(
        onPressed: () {},
        icon: SvgPicture.asset(iconPath),
        label: Text(
          title,
          style: TextStyle(
            fontSize: 14,
            color: Color(0xff374151),
            fontWeight: FontWeight.w600,
          ),
        ),
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(0, 55),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }
}
