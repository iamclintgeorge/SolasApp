import 'package:flutter/material.dart';
import '../content/catechism/wlc_content.dart'; // Assuming the wlcContent data is in this file
import '../widgets/question_card.dart'; // Import your QuestionCard widget
import 'question_answer_screen.dart'; // Import the QuestionAnswerScreen

class WLCScreen extends StatelessWidget {
  const WLCScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Extract metadata and data from wlcContent
    final metadata = wlcContent['Metadata'] as Map<String, dynamic>;
    final data = wlcContent['Data'] as List<dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'WLC',
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
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        // actions: [
        //   IconButton(icon: const Icon(Icons.favorite_border), onPressed: () {}),
        //   IconButton(icon: const Icon(Icons.info_outline), onPressed: () {}),
        // ],
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
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    metadata['Title'],
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  'Year: ${metadata['Year'] ?? 'Unknown Year'}',
                  style: const TextStyle(fontSize: 16, color: Colors.white70),
                ),
                const SizedBox(height: 8.0),
                Text(
                  'Location: ${metadata['Location'] ?? 'Unknown Location'}',
                  style: const TextStyle(fontSize: 16, color: Colors.white70),
                ),
                const SizedBox(height: 8.0),
                Text(
                  'Authors: ${metadata['Authors']?.join(', ') ?? 'Unknown Authors'}',
                  style: const TextStyle(fontSize: 16, color: Colors.white70),
                ),
              ],
            ),
          ),
          // const Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 16.0),
          //   child: Text(
          //     'Contents',
          //     style: TextStyle(
          //       fontSize: 18,
          //       fontWeight: FontWeight.bold,
          //       color: Colors.white,
          //     ),
          //   ),
          // ),
          // const Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          //   child: Text(
          //     '1-5 | 6-10 | 11-15 | 16-20 | 21-25 | 26-30 | 31-35 | 36-40 | 41-45 | 46-50 | 51-55 | 56-60 | 61-65 | 66-70 | 71-75 | 76-80 | 81-85 | 86-90 | 91-95 | 96-100 | 101-107',
          //     style: TextStyle(color: Colors.white),
          //   ),
          // ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              'Questions',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          ...data.map((item) {
            final question = 'Q${item['Number']}: ${item['Question']}';
            final answer = item['Answer'] ?? 'No Answer Available';
            const references = ''; // Placeholder for references

            return QuestionCard(
              question: question,
              answer: answer,
              references: references,
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder:
                        (context, animation, secondaryAnimation) =>
                            QuestionAnswerScreen(
                              question: question,
                              answer: answer,
                              references: references,
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
