import 'package:flutter/material.dart';

class Eventcard extends StatelessWidget {
  final bool isPast;
  final child;
  const Eventcard({super.key, required this.isPast, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.all(25),
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Theme.of(context).primaryColor.withOpacity(.4),
            spreadRadius: 2,
            blurRadius: 7,
          )
        ],
      ),
      child: child,
    );
  }
}
