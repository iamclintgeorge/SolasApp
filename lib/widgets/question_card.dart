import 'package:flutter/material.dart';

class QuestionCard extends StatelessWidget {
  final String question;
  final String answer;
  final String references;
  final VoidCallback? onTap;

  const QuestionCard({
    super.key,
    required this.question,
    required this.answer,
    required this.references,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF1E1E1E),
      child: ListTile(
        title: Text(
          question,
          style: const TextStyle(fontSize: 16, color: Colors.white),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.arrow_forward_ios, color: Colors.white),
          onPressed: onTap,
        ),
        onTap: onTap,
      ),
    );
  }
}
