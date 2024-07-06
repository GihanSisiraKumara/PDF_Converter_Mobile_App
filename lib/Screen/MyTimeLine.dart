import 'package:flutter/material.dart';
import 'package:flutter_pdf_converter/Screen/EventCard.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Mytimeline extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final eventCard;
  const Mytimeline(
      {super.key,
      required this.isFirst,
      required this.isLast,
      required this.isPast,
      required this.eventCard});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        //decaration listLine
        beforeLineStyle: const LineStyle(color: Colors.blue),
        indicatorStyle: IndicatorStyle(
            width: 30,
            color: const Color.fromARGB(255, 13, 59, 98),
            iconStyle: IconStyle(iconData: Icons.done, color: Colors.white)),
        endChild: Eventcard(isPast: isPast, child: eventCard),
      ),
    );
  }
}
