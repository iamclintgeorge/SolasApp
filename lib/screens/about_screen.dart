import 'package:SolasApp/screens/apostles_screen.dart';
import 'package:SolasApp/screens/athanasian_screen.dart';
import 'package:SolasApp/screens/chalcedonian_screen.dart';
import 'package:SolasApp/screens/nicene_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/section_widget.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionScreen(
      sectionTitle: 'About',
      items: [
        SectionItem(
          title: 'Privacy Policy',
          progress: 0.70,
          destination: const ApostlesScreen(),
        ),
        SectionItem(
          title: 'Terms and Conditions',
          progress: 0.50,
          destination: const NiceneScreen(),
        ),
        SectionItem(
          title: 'Licenses',
          progress: 0.0,
          destination: const AthanasianScreen(),
        ),
        SectionItem(
          title: 'Version 1.0',
          progress: 0.0,
          destination: const AthanasianScreen(),
        ),
      ],
    );
  }
}
