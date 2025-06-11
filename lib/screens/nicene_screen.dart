import 'package:flutter/material.dart';
import '../content/creeds/nicene_content.dart'; // Update with your actual file path

class NiceneScreen extends StatelessWidget {
  const NiceneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final metadata = apostlesContent['Metadata'] as Map<String, dynamic>;
    final content =
        (niceneContent['Data'] as Map<String, dynamic>)['Content'] as String;

    return Scaffold(
      backgroundColor: const Color(0xFF0A0A0A),
      appBar: AppBar(
        title: const Text(
          'Nicene Creed',
          style: TextStyle(
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
        backgroundColor: const Color(0xFF0A0A0A),
      ),
      body: ListView(
        children: [
          // Image.asset(
          //   'assets/images/Assertion_of_Liberty_of_Conscience_by_the_Independents_of_the_Westminster_Assembly_of_Divines,_1644.jpg',
          //   height: 500,
          //   width: double.infinity,
          //   fit: BoxFit.cover,
          //   errorBuilder:
          //       (context, error, stackTrace) =>
          //           const Icon(Icons.error, color: Colors.white),
          // ),
          // const SizedBox(height: 16),
          // Text(
          //   'Year: ${metadata['Year'] ?? 'Unknown'}',
          //   style: const TextStyle(fontSize: 16, color: Colors.white70),
          // ),
          // const SizedBox(height: 8),
          // Text(
          //   'Location: ${metadata['Location'] ?? 'Unknown'}',
          //   style: const TextStyle(fontSize: 16, color: Colors.white70),
          // ),
          // const SizedBox(height: 8),
          // Text(
          //   'Authors: ${(metadata['Authors'] as List).isEmpty ? 'Unknown' : (metadata['Authors'] as List).join(", ")}',
          //   style: const TextStyle(fontSize: 16, color: Colors.white70),
          // ),
          // const Divider(height: 32, color: Colors.white54),
          Container(
            padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
            child: Text(
              content,
              style: const TextStyle(fontSize: 16, color: Colors.white),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
