import 'package:flutter/material.dart';

class QuestionAnswerScreen extends StatelessWidget {
  final String question;
  final String answer;
  final String references;

  const QuestionAnswerScreen({
    super.key,
    required this.question,
    required this.answer,
    required this.references,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Question & Answer'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'A: $answer',
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
            if (references.isNotEmpty) ...[
              const SizedBox(height: 16.0),
              const Text(
                'References',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                references,
                style: const TextStyle(fontSize: 14, color: Colors.white),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
