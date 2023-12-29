import 'package:flutter/material.dart';
import 'package:testing/design/colors.dart';
import 'package:testing/design/dimensions.dart';

class AccentButton extends StatelessWidget {
  final String title;
  final Function() onTap;

  const AccentButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius20)),
        maximumSize: const Size.fromHeight(height40),
        minimumSize: const Size(width200, height40),
        backgroundColor: primaryColor,
        elevation: 0,
      ),
      child: Text(
        title,
        style: const TextStyle(
            color: surfaceColor,
            fontSize: fontSize14,
            fontWeight: FontWeight.w600
        ),
      ),
    );
  }
}
