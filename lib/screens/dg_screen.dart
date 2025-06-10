import 'package:flutter/material.dart';
import '../widgets/section_widget.dart';
import 'wsc_screen.dart';
import 'wlc_screen.dart';
import 'heidelberg_screen.dart';
import 'cyc_screen.dart';

class DgScreen extends StatelessWidget {
  const DgScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionScreen(
      sectionTitle: 'Doctrines of Grace',
      items: [
        SectionItem(
          title: 'Total Depravity',
          progress: 0.70,
          destination: const WSCScreen(),
        ),
        SectionItem(
          title: 'Unconditional Election',
          progress: 0.50,
          destination: const WLCScreen(),
        ),
        SectionItem(
          title: 'Limited Atonement',
          progress: 0.0,
          destination: const HeidelbergScreen(),
        ),
        SectionItem(
          title: 'Irresistible Grace',
          progress: 0.0,
          destination: const CycScreen(),
        ),
        SectionItem(
          title: 'Perseverance of the Saint',
          progress: 0.0,
          destination: const CycScreen(),
        ),
      ],
    );
  }
}
