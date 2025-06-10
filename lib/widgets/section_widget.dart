import 'package:flutter/material.dart';
import 'catechism_card.dart';

class SectionItem {
  final String title;
  final double progress;
  final Widget destination;

  SectionItem({
    required this.title,
    required this.progress,
    required this.destination,
  });
}

class SectionScreen extends StatelessWidget {
  final String sectionTitle;
  final List<SectionItem> items;

  const SectionScreen({
    super.key,
    required this.sectionTitle,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          sectionTitle,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'PD',
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 30),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return CatechismCard(
            title: item.title,
            progress: item.progress,
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(pageBuilder: (_, __, ___) => item.destination),
              );
            },
          );
        },
      ),
    );
  }
}
