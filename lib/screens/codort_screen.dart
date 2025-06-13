import 'package:flutter/material.dart';
import '../content/confessions/codort_content.dart'; // Adjust the import path as needed
import '../widgets/question_card.dart';
import 'question_answer_screen.dart';

class CanonsOfDortScreen extends StatelessWidget {
  const CanonsOfDortScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final metadata = codortContent['Metadata'] as Map<String, dynamic>;
    final data = codortContent['Data'] as List;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Canons of Dort',
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
              'Chapters & Sections',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          ...data.map((chapter) {
            final chapterNum = chapter['Chapter'];
            final title = chapter['Title'];
            final sections = chapter['Sections'] as List;

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ExpansionTile(
                tilePadding: const EdgeInsets.symmetric(horizontal: 8.0),
                title: Text(
                  'Chapter $chapterNum: $title',
                  style: const TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                children:
                    sections.map<Widget>((section) {
                      final sectionLabel = section['Section'];
                      final content = section['Content'];

                      return QuestionCard(
                        question: 'Section $sectionLabel',
                        answer: content,
                        references: '',
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      QuestionAnswerScreen(
                                        question: 'Section $sectionLabel',
                                        answer: content,
                                        references: '',
                                      ),
                            ),
                          );
                        },
                      );
                    }).toList(),
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
