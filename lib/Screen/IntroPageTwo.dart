import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Intropagetwo extends StatelessWidget {
  const Intropagetwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              child: Lottie.asset('assets/animations/pdfall.json'),
            ),
            const SizedBox(height: 10),
            const Text(
              "All In One",
              style: TextStyle(
                color: Color.fromARGB(255, 185, 4, 4),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                textAlign: TextAlign.center,
                "Transform your documents with ease.\n Our PDF converter app is packed with powerful\n features designed to meet all your document needs.",
                style: TextStyle(
                  color: Color.fromARGB(255, 185, 4, 4),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
