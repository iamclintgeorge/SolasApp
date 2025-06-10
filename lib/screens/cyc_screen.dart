import 'package:flutter/material.dart';
import '../widgets/question_card.dart';
import 'question_answer_screen.dart';
import '../content/catechism/cyc_content.dart';

class CycScreen extends StatelessWidget {
  const CycScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final metadata = cycContent['Metadata'];
    final List<dynamic> questions = cycContent['Data'];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Catechism For Young Children',
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
                  metadata['Title'],
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  'Year: ${metadata['Year']}',
                  style: const TextStyle(fontSize: 16, color: Colors.white70),
                ),
                Text(
                  'Authors: ${metadata['Authors'].join(', ')}',
                  style: const TextStyle(fontSize: 16, color: Colors.white70),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Contents',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              '1-5 | 6-10 | 11-15 | 16-20 | 21-25 | 26-30 | 31-35 | 36-40 | 41-45 | 46-50 | 51-55 | 56-60 | 61-65 | 66-70 | 71-75 | 76-80 | 81-85 | 86-90 | 91-95 | 96-100 | 101-107',
              style: TextStyle(color: Colors.white),
            ),
          ),
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
          ...questions.map((item) {
            final question = 'Q${item['Number']}. ${item['Question']}';
            final answer = item['Answer'];
            const references =
                ''; // Placeholder since references aren't in the JSON

            return QuestionCard(
              question: question,
              answer: answer,
              references: references,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => QuestionAnswerScreen(
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
