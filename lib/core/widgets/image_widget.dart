import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String imagePath;

  const ImageWidget({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
        foregroundDecoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/images/services/6.jpg'), fit: BoxFit.fill),
    ));
  }
}
// child: Image.asset(imagePath),
