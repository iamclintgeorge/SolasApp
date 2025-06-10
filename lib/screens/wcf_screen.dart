import 'package:flutter/material.dart';
import '../content/confessions/wcf_content.dart'; // Replace with your actual path
import '../widgets/question_card.dart';
import 'question_answer_screen.dart';

class WCFScreen extends StatelessWidget {
  const WCFScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final metadata = wcfContent['Metadata'] as Map<String, dynamic>;
    final chapters = wcfContent['Data'] as List<dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'WCF',
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
          Image.asset(
            'assets/images/Assertion_of_Liberty_of_Conscience_by_the_Independents_of_the_Westminster_Assembly_of_Divines,_1644.jpg',
            height: 500,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder:
                (context, error, stackTrace) =>
                    const Icon(Icons.error, color: Colors.white),
          ),
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
              'Chapters',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          ...chapters.map((chapter) {
            final chapterNum = chapter['Chapter'];
            final sections = chapter['Sections'] as List<dynamic>;

            return ExpansionTile(
              collapsedIconColor: Colors.white70,
              iconColor: Colors.white70,
              title: Text(
                'Chapter $chapterNum',
                style: const TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              children:
                  sections.map((section) {
                    final sectionNum = section['Section'];
                    final content = section['Content'] ?? '';
                    final contentWithProofs =
                        section['ContentWithProofs'] ?? '';
                    final references = (section['Proofs'] as List<dynamic>)
                        .expand((proof) => (proof['References'] as List))
                        .cast<String>()
                        .join(', ');

                    return QuestionCard(
                      question: 'Section $sectionNum',
                      answer:
                          contentWithProofs.isNotEmpty
                              ? contentWithProofs
                              : content,
                      references: references,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (_) => QuestionAnswerScreen(
                                  question:
                                      'Chapter $chapterNum, Section $sectionNum',
                                  answer:
                                      contentWithProofs.isNotEmpty
                                          ? contentWithProofs
                                          : content,
                                  references: references,
                                ),
                          ),
                        );
                      },
                    );
                  }).toList(),
            );
          }).toList(),
        ],
      ),
    );
  }
}
