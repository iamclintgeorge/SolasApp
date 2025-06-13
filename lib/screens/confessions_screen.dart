import 'package:SolasApp/screens/belgic_screen.dart';
import 'package:SolasApp/screens/codort_screen.dart';
import 'package:SolasApp/screens/wcf_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/section_widget.dart';

class ConfessionsScreen extends StatelessWidget {
  const ConfessionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionScreen(
      sectionTitle: 'Confessions',
      items: [
        SectionItem(
          title: 'Westminster Confession of Faith',
          progress: 0.70,
          destination: const WCFScreen(),
        ),
        SectionItem(
          title: 'Belgic Confession',
          progress: 0.50,
          destination: const BelgicConfessionScreen(),
        ),
        SectionItem(
          title: 'Canons of Dort',
          progress: 0.0,
          destination: const CanonsOfDortScreen(),
        ),
      ],
    );
  }
}
