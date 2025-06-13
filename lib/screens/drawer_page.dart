import 'package:RefApp/screens/about_screen.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF0A0A0A),
      child: Container(
        padding: const EdgeInsets.only(top: 70.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 200.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'X',
                  style: TextStyle(
                    color: Color.fromARGB(255, 175, 175, 175),
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

            Expanded(
              // The ListView takes up the remaining space
              child: ListView(
                padding: const EdgeInsets.only(
                  left: 50,
                  top: 100,
                ), // Adjusted top padding
                children: [
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text(
                      'HOME',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  // ListTile(
                  //   leading: const Icon(Icons.history),
                  //   title: const Text(
                  //     'PRIVACY POLICY',
                  //     style: TextStyle(fontWeight: FontWeight.bold),
                  //   ),
                  //   textColor: Colors.white,
                  //   iconColor: Colors.white,
                  //   onTap: () {
                  //     Navigator.pop(context);
                  //   },
                  // ),
                  ListTile(
                    leading: const Icon(Icons.more_horiz),
                    title: const Text(
                      'ABOUT',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (
                            context,
                            animation,
                            secondaryAnimation,
                          ) {
                            return const AboutScreen();
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
