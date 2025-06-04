import 'package:flutter/material.dart';
import '../widgets/category_card.dart';
import 'catechisms_screen.dart';
import 'drawer_page.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          kToolbarHeight,
        ), // Default height of AppBar
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0), // Padding above the AppBar
          child: AppBar(
            leading: Builder(
              builder:
                  (context) => IconButton(
                    icon: const Icon(
                      Icons.menu,
                      size: 30.0, // Increase size if needed
                    ),
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
        ),
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
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 30.0),
                    child: Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 22.5,
                        fontWeight: FontWeight.w400,
                        fontFamily: "PD",
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  Divider(
                    color: Color(0xFFD0D0D0),
                    thickness: 3.2,
                    height: 20.0,
                    // indent: 50.0, // Space on the left
                    endIndent: 240.0, // Space on the right
                  ),
                ],
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(10.0),
              mainAxisSpacing: 16.0,
              crossAxisSpacing: 1.0,
              childAspectRatio: 0.65,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                CategoryCard(
                  title: 'Catechisms',
                  progress: 0.70,
                  imagePath: 'assets/images/Luther_at_the_Diet_of_Worms.jpg',
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
                  imagePath: 'assets/images/520px-Synode_van_Dordrecht.jpg',
                  onTap: () {},
                ),
                CategoryCard(
                  title: 'Creeds',
                  progress: 0.0,
                  imagePath: 'assets/images/422px-Athanasius_I.jpg',
                  onTap: () {},
                ),
                CategoryCard(
                  title: 'Doctrines of Grace',
                  progress: 0.0,
                  imagePath:
                      'assets/images/Lithograph-Martin-Luther-church.jpg',
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
