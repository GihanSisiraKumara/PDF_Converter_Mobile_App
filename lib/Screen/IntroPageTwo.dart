import 'package:flutter/material.dart';

class Intropagetwo extends StatelessWidget {
  const Intropagetwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 159, 238, 138),
      child: const Center(
        child: Text(
          'This is the  Page two',
          style: TextStyle(
            fontSize: 10,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
