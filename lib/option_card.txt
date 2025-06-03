import 'package:flutter/material.dart';
import 'catechism_screen.dart';
import 'creed_screen.dart';
import 'confession_screen.dart';

class OptionCard extends StatelessWidget {
  final String title;
  final List<String> content;
  final int category;

  const OptionCard({
    super.key,
    required this.title,
    required this.content,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ...content.map(
            (item) => GestureDetector(
              onTap: () {
                if (category == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CatechismScreen(itemName: item),
                    ),
                  );
                } else if (category == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreedScreen(itemName: item),
                    ),
                  );
                } else if (category == 3) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConfessionScreen(itemName: item),
                    ),
                  );
                }
                // Categories 4, 5, 6 have empty content, so no navigation
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(item, style: const TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
