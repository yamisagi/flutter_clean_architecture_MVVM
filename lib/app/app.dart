import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/presentation/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  const MyApp._internal(); // private named constructor

  static const MyApp instance = MyApp._internal(); // singleton instance

  // Her ne zaman bir instance oluşturulursa oluşturulsun, aynı instance döndürür.
  factory MyApp() => instance; // factory constructor

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getAppTheme(),
    );
  }
}
