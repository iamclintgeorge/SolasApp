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
              padding: const EdgeInsets.only(
                left: 200.0,
              ), // Add padding as needed
              child: const Text(
                'X',
                style: TextStyle(
                  color: Colors.white, // Text color
                  fontSize: 20, // Font size
                  fontWeight: FontWeight.w200, // Font weight
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
                  ListTile(
                    leading: const Icon(Icons.history),
                    title: const Text(
                      'RECENT',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.more_horiz),
                    title: const Text(
                      'MORE',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 50, top: 300.0),
                    child: Text(
                      'FOLLOW US',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF929292),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 20),
                    child: Row(
                      children: const [
                        Icon(Icons.camera_alt, color: Color(0xFFD8D8D8)),
                        SizedBox(width: 16.0),
                        Icon(Icons.facebook, color: Color(0xFFD8D8D8)),
                        SizedBox(width: 16.0),
                        Icon(Icons.flutter_dash, color: Color(0xFFD8D8D8)),
                      ],
                    ),
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
