import 'package:flutter/material.dart';
import '../widgets/category_card.dart';
import 'catechisms_screen.dart';
import 'drawer_page.dart';

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
      drawer: const DrawerPage(),
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
