import 'package:flutter/material.dart';

class Intropagethree extends StatelessWidget {
  const Intropagethree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 149, 131, 207),
      child: const Center(
        child: Text(
          'This is the  Page three',
          style: TextStyle(
            fontSize: 10,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
