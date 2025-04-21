import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.label,
    required this.prefixIcon,
    this.suffixIcon,
    this.isSecureText = false,
    this.onSuffixIconPressed = null,
  });

  final String label;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final bool isSecureText;
  final VoidCallback? onSuffixIconPressed;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: isSecureText,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(prefixIcon),
          suffixIcon: IconButton(
            icon: Icon(suffixIcon),
            color: Colors.grey,
            onPressed: onSuffixIconPressed,
          ),
        ));
  }
}
