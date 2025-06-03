import 'package:flutter/material.dart';

class CatechismCard extends StatelessWidget {
  final String title;
  final double progress;
  final VoidCallback onTap;

  const CatechismCard({
    super.key,
    required this.title,
    required this.progress,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF1E1E1E),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${(progress * 100).toInt()}%',
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
            LinearProgressIndicator(
              value: progress,
              color: Colors.red,
              backgroundColor: Colors.grey[700],
            ),
          ],
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
