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
      color: const Color(0xFF0A0A0A),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
        side: BorderSide(
          color: Color(0xFF303030), // Red border color
          width: 1.17, // Border width
        ),
      ),
      child: ListTile(
        title: Padding(
          padding: EdgeInsets.only(bottom: 20, top: 18),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              // fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: "LibreFranklin",
            ),
          ),
        ),
        // subtitle: Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Text(
        //       '${(progress * 100).toInt()}%',
        //       style: const TextStyle(fontSize: 12, color: Colors.white),
        //     ),
        //     LinearProgressIndicator(
        //       value: progress,
        //       color: Colors.red,
        //       backgroundColor: Colors.grey[700],
        //     ),
        //   ],
        // ),
        trailing: IconButton(
          icon: const Icon(
            Icons.arrow_forward_ios,
            color: Color.fromARGB(255, 175, 175, 175),
          ),
          onPressed: onTap,
          padding: EdgeInsets.only(left: 20),
          iconSize: 15.0, // Set the size here
        ),

        onTap: onTap,
      ),
    );
  }
}
