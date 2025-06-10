import 'package:flutter/material.dart';
import '../widgets/catechism_card.dart';
import 'wsc_screen.dart';
import 'wlc_screen.dart';
import 'heidelberg_screen.dart';
import 'cyc_screen.dart';

class CatechismsScreen extends StatelessWidget {
  const CatechismsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Catechisms',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'PD',
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 30),
        children: [
          CatechismCard(
            title: 'Westminster Shorter Catechism',
            progress: 0.70,
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return const WSCScreen();
                  },
                ),
              );
            },
          ),
          CatechismCard(
            title: 'Westminster Larger Catechism',
            progress: 0.50,
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return const WLCScreen();
                  },
                ),
              );
            },
          ),
          CatechismCard(
            title: 'Heidelberg Catechism',
            progress: 0.0,
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return const HeidelbergScreen();
                  },
                ),
              );
            },
          ),
          CatechismCard(
            title: 'Catechism for Young Children',
            progress: 0.0,
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return const CycScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
