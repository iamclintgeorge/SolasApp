import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final double progress;
  final String imagePath;
  final VoidCallback onTap;

  const CategoryCard({
    super.key,
    required this.title,
    required this.progress,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF0A0A0A),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0), // Rounded corners
        side: BorderSide(
          color: Colors.white, // Border color
          width: 0.1, // Border width
        ),
      ),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                  top: 8,
                ), // Adjust the padding value as needed
                child: Image.asset(
                  imagePath,
                  width: 157,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 20.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                '${(progress * 100).toInt()} %',
                style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 55),
              child: LinearProgressIndicator(
                value: progress,
                color: Colors.red,
                backgroundColor: Color(0x10D9D9D9),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0, bottom: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9), // Circular background color
                    shape: BoxShape.circle, // Makes the background circular
                  ),
                  width: 30.0, // Set the width of the circular container
                  height: 30.0, // Set the height of the circular container
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black, // Arrow color
                      size: 10, // Smaller icon size
                    ),
                    padding:
                        EdgeInsets
                            .zero, // Remove any extra padding inside the button
                    onPressed: onTap,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
