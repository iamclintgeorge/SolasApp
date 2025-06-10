import 'package:flutter/material.dart';
import '../widgets/section_widget.dart';
import 'wsc_screen.dart';
import 'wlc_screen.dart';
import 'heidelberg_screen.dart';
import 'cyc_screen.dart';

class SolasScreen extends StatelessWidget {
  const SolasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionScreen(
      sectionTitle: '5 Solas',
      items: [
        SectionItem(
          title: 'Sola Scriptura',
          progress: 0.70,
          destination: const WSCScreen(),
        ),
        SectionItem(
          title: 'Sola Fide',
          progress: 0.50,
          destination: const WLCScreen(),
        ),
        SectionItem(
          title: 'Sola Gratia',
          progress: 0.0,
          destination: const HeidelbergScreen(),
        ),
        SectionItem(
          title: 'Solus Christus',
          progress: 0.0,
          destination: const CycScreen(),
        ),
        SectionItem(
          title: 'Soli Deo Gloria',
          progress: 0.0,
          destination: const CycScreen(),
        ),
      ],
    );
  }
}
