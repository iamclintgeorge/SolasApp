import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';
import 'package:flutter/services.dart';
import 'package:in_app_update/in_app_update.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void checkForUpdate() async {
    InAppUpdate.checkForUpdate().then((info) {
      if (info.updateAvailability == UpdateAvailability.updateAvailable) {
        InAppUpdate.performImmediateUpdate();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    checkForUpdate();

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Color(0xFF0A0A0A),
      ),
    );

    return MaterialApp(
      title: 'Reformed App',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF0A0A0A),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0A0A),
          foregroundColor: Color(0xFFD8D8D8),
        ),
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
      ),
      debugShowCheckedModeBanner: false,
      home: const CategoriesScreen(),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'screens/categories_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Reformed App',
//       themeMode: ThemeMode.system, // Automatically switch based on system theme
//       darkTheme: ThemeData(
//         scaffoldBackgroundColor: const Color(0xFF0A0A0A),
//         appBarTheme: const AppBarTheme(
//           backgroundColor: Color(0xFF0A0A0A),
//           foregroundColor: Color(0xFFD8D8D8),
//         ),
//         textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
//       ),
//       theme: ThemeData(
//         scaffoldBackgroundColor: Colors.white, // Light mode background color
//         appBarTheme: const AppBarTheme(
//           backgroundColor: Colors.white,
//           foregroundColor: Colors.black,
//         ),
//         textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),
//       ),
//       debugShowCheckedModeBanner: false,
//       home: const CategoriesScreen(),
//     );
//   }
// }
