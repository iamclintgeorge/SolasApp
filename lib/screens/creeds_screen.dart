import 'package:RefApp/screens/apostles_screen.dart';
import 'package:RefApp/screens/athanasian_screen.dart';
import 'package:RefApp/screens/chalcedonian_screen.dart';
import 'package:RefApp/screens/nicene_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/section_widget.dart';
import 'wlc_screen.dart';
import 'heidelberg_screen.dart';
import 'cyc_screen.dart';

class CreedsScreen extends StatelessWidget {
  const CreedsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionScreen(
      sectionTitle: 'Creeds',
      items: [
        SectionItem(
          title: 'Apostles Creed',
          progress: 0.70,
          destination: const ApostlesScreen(),
        ),
        SectionItem(
          title: 'Nicene Creed',
          progress: 0.50,
          destination: const NiceneScreen(),
        ),
        SectionItem(
          title: 'Athanasian Creed',
          progress: 0.0,
          destination: const AthanasianScreen(),
        ),
        SectionItem(
          title: 'Chalcedonian Creed',
          progress: 0.0,
          destination: const ChalcedonianScreen(),
        ),
      ],
    );
  }
}
