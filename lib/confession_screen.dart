import 'package:flutter/material.dart';
import 'content.dart';

class ConfessionScreen extends StatelessWidget {
  final String itemName;

  const ConfessionScreen({super.key, required this.itemName});

  @override
  Widget build(BuildContext context) {
    final content = confessionContent[itemName]!; // Assert non-null
    return Scaffold(
      appBar: AppBar(
        title: Text(
          (content["Metadata"] as Map<String, dynamic>?)?["Title"] ??
              "Confession",
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
              (content["Data"] as List<dynamic>?)?.map((chapter) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Chapter ${chapter["Chapter"]}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ...chapter["Sections"].map((section) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            section["Content"],
                            style: const TextStyle(color: Colors.white),
                          ),
                          if (section["Proofs"] != null &&
                              section["Proofs"].isNotEmpty) ...[
                            const SizedBox(height: 5),
                            const Text(
                              "Proofs:",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ...section["Proofs"].map(
                              (proof) => Text(
                                proof["References"].join(", "),
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                          const SizedBox(height: 15),
                        ],
                      );
                    }),
                  ],
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
