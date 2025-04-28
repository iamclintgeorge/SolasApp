// import 'package:flutter/material.dart';
// import 'home.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Reformed App',
//       theme: ThemeData(
//         scaffoldBackgroundColor: const Color(0xFF121212), // Dark background
//         appBarTheme: const AppBarTheme(
//           backgroundColor: Color(0xFF121212),
//           foregroundColor: Colors.white,
//         ),
//         textTheme: const TextTheme(
//           bodyMedium: TextStyle(color: Colors.white), // Default text color
//         ),
//       ),
//       home: const HomeScreen(),
//     );
//   }
// }

import 'package:flutter/material.dart';

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
        scaffoldBackgroundColor: const Color(0xFF121212), // Dark background
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF121212),
          foregroundColor: Colors.white,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white), // Default text color
        ),
      ),
      home: const CategoriesScreen(),
    );
  }
}

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder:
              (context) => IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
        ),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          PopupMenuButton<String>(
            icon: const Icon(Icons.language),
            onSelected: (String value) {},
            itemBuilder: (BuildContext context) {
              return {'EN'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      drawer: const DrawerPage(), // Moved drawer property to Scaffold
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Divider(color: Colors.white),
                ],
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(16.0),
              mainAxisSpacing: 16.0,
              crossAxisSpacing: 16.0,
              childAspectRatio: 0.65,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                CategoryCard(
                  title: 'Catechisms',
                  progress: 0.70,
                  imageUrl: 'https://picsum.photos/200/200?random=1',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CatechismsScreen(),
                      ),
                    );
                  },
                ),
                CategoryCard(
                  title: 'Confessions',
                  progress: 0.0,
                  imageUrl: 'https://picsum.photos/200/200?random=2',
                  onTap: () {},
                ),
                CategoryCard(
                  title: 'Creeds',
                  progress: 0.0,
                  imageUrl: 'https://picsum.photos/200/200?random=3',
                  onTap: () {},
                ),
                CategoryCard(
                  title: 'Doctrines of Grace',
                  progress: 0.0,
                  imageUrl: 'https://picsum.photos/200/200?random=4',
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final double progress;
  final String imageUrl;
  final VoidCallback onTap;

  const CategoryCard({
    super.key,
    required this.title,
    required this.progress,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF1E1E1E),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.network(
                imageUrl,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder:
                    (context, error, stackTrace) =>
                        const Icon(Icons.error, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                '${(progress * 100).toInt()}%',
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 4.0,
              ),
              child: LinearProgressIndicator(
                value: progress,
                color: Colors.red,
                backgroundColor: Colors.grey[700],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  onPressed: onTap,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CatechismsScreen extends StatelessWidget {
  const CatechismsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catechisms'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: const [
          CatechismCard(title: 'Westminster Shorter Catechism', progress: 0.70),
          CatechismCard(title: 'Westminster Larger Catechism', progress: 0.50),
          CatechismCard(title: 'Heidelberg Catechism', progress: 0.0),
          CatechismCard(title: "Keach's Catechism", progress: 0.0),
          CatechismCard(title: 'Catechism for Young Children', progress: 0.0),
          CatechismCard(title: 'An Orthodox Catechism', progress: 0.0),
        ],
      ),
    );
  }
}

class CatechismCard extends StatelessWidget {
  final String title;
  final double progress;

  const CatechismCard({super.key, required this.title, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF1E1E1E),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${(progress * 100).toInt()}%',
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
            LinearProgressIndicator(
              value: progress,
              color: Colors.red,
              backgroundColor: Colors.grey[700],
            ),
          ],
        ),
        trailing: IconButton(
          icon: const Icon(Icons.arrow_forward_ios, color: Colors.white),
          onPressed: () {},
        ),
      ),
    );
  }
}

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF121212),
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
            onTap: () {
              Navigator.pop(context);
              // Navigate to home (currently same as CategoriesScreen)
            },
          ),
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text('RECENT'),
            onTap: () {
              Navigator.pop(context);
              // Navigate to recent page
            },
          ),
          ListTile(
            leading: const Icon(Icons.more_horiz),
            title: const Text('MORE'),
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
