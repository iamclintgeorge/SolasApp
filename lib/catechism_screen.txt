import 'package:flutter/material.dart';
import 'content.dart';

class CatechismScreen extends StatelessWidget {
  final String itemName;

  const CatechismScreen({super.key, required this.itemName});

  @override
  Widget build(BuildContext context) {
    final content = catechismContent[itemName]!; // Assert non-null
    return Scaffold(
      appBar: AppBar(
        title: Text(
          (content["Metadata"] as Map<String, dynamic>?)?["Title"] ??
              "Catechism",
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
              (content["Data"] as List<dynamic>?)?.map((qa) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10), // Fixed below
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        qa["Question"],
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        qa["Answer"],
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                );
              }).toList() ??
              [
                const Text(
                  "Content not found",
                  style: TextStyle(color: Colors.white),
                ),
              ],
        ),
      ),
    );
  }
}
