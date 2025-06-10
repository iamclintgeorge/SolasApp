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
          color: Color(0xFF303030), // Border color
          width: 1.5, // Border width
        ),
      ),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 8,
                top: 8,
              ), // Adjust the padding value as needed
              child: Image.asset(
                imagePath,
                width: 157,
                height: 157,
                fit: BoxFit.cover,
              ),
            ),

            Container(
              padding: const EdgeInsets.only(left: 10.0, top: 20.0),
              // margin: EdgeInsets.only(bottom: 50),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: "LibreFranklin",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13, top: 20),
              child: Text(
                '${(progress * 100).toInt()} %',
                style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  fontFamily: "LibreFranklin",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 10, top: 5),
              child: LinearProgressIndicator(
                value: progress,
                color: Colors.red,
                backgroundColor: Color(0x10D9D9D9),
              ),
            ),
            // Align(
            //   alignment: Alignment.centerRight,
            //   child: Container(
            //     padding: EdgeInsets.only(right: 10.0, bottom: 10),
            //     child: Container(
            //       decoration: BoxDecoration(
            //         color: Color(0xFFD9D9D9), // Circular background color
            //         shape: BoxShape.circle, // Makes the background circular
            //       ),
            //       width: 30.0, // Set the width of the circular container
            //       height: 30.0, // Set the height of the circular container
            //       child: IconButton(
            //         icon: const Icon(
            //           Icons.arrow_forward_ios,
            //           color: Colors.black, // Arrow color
            //           size: 10, // Smaller icon size
            //         ),
            //         padding:
            //             EdgeInsets
            //                 .zero, // Remove any extra padding inside the button
            //         onPressed: onTap,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
