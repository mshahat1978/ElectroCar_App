import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
      required this.label,
      required this.onPressed,
      this.alignment = Alignment.center});

  final String label;
  final Alignment alignment;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: Theme.of(context).textButtonTheme.style?.copyWith(
            alignment: alignment,
          ),
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
