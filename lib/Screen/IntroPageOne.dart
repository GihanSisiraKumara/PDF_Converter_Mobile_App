import 'package:flutter/material.dart';

class Intropageone extends StatelessWidget {
  const Intropageone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 233, 149, 202),
      child: const Center(
        child: Text(
          'This is the  Page One',
          style: TextStyle(
            fontSize: 10,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
