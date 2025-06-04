import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF0A0A0A),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Color(0xFF121212)),
            child: Image.network(
              'https://picsum.photos/200/100?random=5',
              fit: BoxFit.cover,
              errorBuilder:
                  (context, error, stackTrace) =>
                      const Icon(Icons.error, color: Colors.white),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('HOME'),
            textColor: Colors.white,
            iconColor: Colors.white,
            onTap: () {
              Navigator.pop(context);
              // Navigate to home (currently same as CategoriesScreen)
            },
          ),
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text('RECENT'),
            textColor: Colors.white,
            iconColor: Colors.white,
            onTap: () {
              Navigator.pop(context);
              // Navigate to recent page
            },
          ),
          ListTile(
            leading: const Icon(Icons.more_horiz),
            title: const Text('MORE'),
            textColor: Colors.white,
            iconColor: Colors.white,
            onTap: () {
              Navigator.pop(context);
              // Navigate to more page
            },
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'FOLLOW US',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.camera_alt), // Instagram
              SizedBox(width: 16.0),
              Icon(Icons.facebook), // Facebook
              SizedBox(width: 16.0),
              Icon(Icons.flutter_dash), // Placeholder for Twitter/X
            ],
          ),
        ],
      ),
    );
  }
}
