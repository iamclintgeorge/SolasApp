import 'package:flutter/material.dart';
import 'option_card.dart';
// Remove these:
// import 'catechism_screen.dart';
// import 'creed_screen.dart';
// import 'confession_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
              const Text(
                "HOME",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 70),
              Container(
                width: MediaQuery.of(context).size.width * 0.92,
                margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.04,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFF202020),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.only(top: 20, bottom: 50),
                child: const Column(
                  children: [
                    OptionCard(
                      title: "CATECHISMS",
                      content: [
                        "Westminster Short Catechism",
                        "Westminster Larger Catechism",
                        "Heidelberg Catechism",
                      ],
                      category: 1,
                    ),
                    OptionCard(
                      title: "CREEDS",
                      content: [
                        "Apostles Creed",
                        "Nicene Creed",
                        "Athanasian Creed",
                        "Chalcedonian Creed",
                      ],
                      category: 2,
                    ),
                    OptionCard(
                      title: "CONFESSIONS",
                      content: [
                        "Westminster Confessions",
                        "Belgic Confessions",
                        "Canons of Dort",
                      ],
                      category: 3,
                    ),
                    OptionCard(
                      title: "DOCTRINE OF GRACE",
                      content: [],
                      category: 4,
                    ),
                    OptionCard(title: "FIVE SOLAS", content: [], category: 5),
                    OptionCard(
                      title: "COVENANT THEOLOGY",
                      content: [],
                      category: 6,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
