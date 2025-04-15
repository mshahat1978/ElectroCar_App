import 'package:electrocar_app/config/theme/theme_manager.dart';
import 'package:flutter/material.dart';

class ElectroApp extends StatelessWidget {
  const ElectroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.light,
      darkTheme: ThemeManager.dark,
      themeMode: ThemeMode.light,
    );
  }
}
