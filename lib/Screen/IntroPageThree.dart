import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Intropagethree extends StatelessWidget {
  const Intropagethree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              child: Lottie.asset('assets/animations/done.json'),
            ),
            const SizedBox(height: 10),
            const Text(
              "Let's Go",
              style: TextStyle(
                color: Color.fromARGB(255, 185, 4, 4),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "condition tik accept krnn hadmu mek",
              style: TextStyle(
                color: Color.fromARGB(255, 185, 4, 4),
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
