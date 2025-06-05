import 'package:flutter/material.dart';
import '../widgets/question_card.dart';
import 'question_answer_screen.dart';

class WSCScreen extends StatelessWidget {
  const WSCScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WSC'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(icon: const Icon(Icons.favorite_border), onPressed: () {}),
          IconButton(icon: const Icon(Icons.info_outline), onPressed: () {}),
        ],
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
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Westminster Shorter Catechism',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
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
          QuestionCard(
            // Removed const
            question: 'Q1. What is the chief end of man?',
            answer:
                "Man's chief end is to glorify God, and to enjoy him forever.",
            references: '[1]. 1 Cor. 10:31, Rom. 11:36;\n[2]. Ps. 73:25-28.',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => QuestionAnswerScreen(
                        question: 'Q1. What is the chief end of man?',
                        answer:
                            "Man's chief end is to glorify God, and to enjoy him forever.",
                        references:
                            '[1]. 1 Cor. 10:31, Rom. 11:36;\n[2]. Ps. 73:25-28.',
                      ),
                ),
              );
            },
          ),
          QuestionCard(
            question:
                'Q2. What Rule Hath God Given To Direct Us How We May Glorify...',
            answer: '',
            references: '',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => const QuestionAnswerScreen(
                        question:
                            'Q2. What Rule Hath God Given To Direct Us How We May Glorify...',
                        answer: 'Content not available yet.',
                        references: '',
                      ),
                ),
              );
            },
          ),
          QuestionCard(
            question: 'Q3. What is the chief end of man?',
            answer: '',
            references: '',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => const QuestionAnswerScreen(
                        question: 'Q3. What is the chief end of man?',
                        answer: 'Content not available yet.',
                        references: '',
                      ),
                ),
              );
            },
          ),
          QuestionCard(
            question:
                'Q4. What Rule Hath God Given To Direct Us How We May Glorify...',
            answer: '',
            references: '',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => const QuestionAnswerScreen(
                        question:
                            'Q4. What Rule Hath God Given To Direct Us How We May Glorify...',
                        answer: 'Content not available yet.',
                        references: '',
                      ),
                ),
              );
            },
          ),
          QuestionCard(
            question: 'Q5. What is the chief end of man?',
            answer: '',
            references: '',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => const QuestionAnswerScreen(
                        question: 'Q5. What is the chief end of man?',
                        answer: 'Content not available yet.',
                        references: '',
                      ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
