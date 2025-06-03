import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reformed App',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF121212),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF121212),
          foregroundColor: Colors.white,
        ),
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
      ),
      debugShowCheckedModeBanner: false,
      home: const CategoriesScreen(),
    );
  }
}
