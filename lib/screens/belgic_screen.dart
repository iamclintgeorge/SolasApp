import 'package:flutter/material.dart';
import '../content/confessions/belgic_content.dart'; // Update with your actual file path
import '../widgets/question_card.dart'; // Reuse your existing QuestionCard widget
import 'question_answer_screen.dart'; // Reuse for article display

class BelgicConfessionScreen extends StatelessWidget {
  const BelgicConfessionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final metadata = belgicContent['Metadata'] as Map<String, dynamic>;
    final articles = belgicContent['Data'] as List<dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Belgic Confession',
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Year: ${metadata['Year'] ?? 'Unknown'}',
                  style: const TextStyle(fontSize: 16, color: Colors.white70),
                ),
                const SizedBox(height: 8),
                Text(
                  'Location: ${metadata['Location'] ?? 'Unknown'}',
                  style: const TextStyle(fontSize: 16, color: Colors.white70),
                ),
                const SizedBox(height: 8),
                Text(
                  'Authors: ${(metadata['Authors'] as List).join(", ")}',
                  style: const TextStyle(fontSize: 16, color: Colors.white70),
                ),
              ],
            ),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Articles',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          ...articles.map((article) {
            final articleNum = article['Article'];
            final title = article['Title'] ?? 'Untitled';
            final content = article['Content'] ?? 'No content available';

            return QuestionCard(
              question: 'Article $articleNum: $title',
              answer: content,
              references: '', // No references included in this format
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder:
                        (context, animation, secondaryAnimation) =>
                            QuestionAnswerScreen(
                              question: 'Article $articleNum: $title',
                              answer: content,
                              references: '',
                            ),
                  ),
                );
              },
            );
          }).toList(),
        ],
      ),
    );
  }
}
