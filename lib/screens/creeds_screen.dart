import 'package:SolasApp/screens/apostles_screen.dart';
import 'package:SolasApp/screens/athanasian_screen.dart';
import 'package:SolasApp/screens/chalcedonian_screen.dart';
import 'package:SolasApp/screens/nicene_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/section_widget.dart';

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
