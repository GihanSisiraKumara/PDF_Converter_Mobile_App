import 'package:flutter/material.dart';
import 'package:flutter_pdf_converter/Screen/MyTimeLine.dart';

class Helpcondition extends StatefulWidget {
  const Helpcondition({super.key, required String title});

  @override
  State<Helpcondition> createState() => _HelpconditionState();
}

class _HelpconditionState extends State<Helpcondition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 252, 250, 251),
          centerTitle: true,
          title: const Text(
            'Help & Support',
            style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 17, 18, 17),
                fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            style: ButtonStyle(
              iconSize: WidgetStateProperty.all<double>(30),
              iconColor: WidgetStateProperty.all<Color>(
                  const Color.fromARGB(255, 55, 128, 201)),
              backgroundColor: WidgetStateProperty.all<Color>(
                const Color.fromARGB(255, 163, 226, 247),
              ),
            ),
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Image.asset('assets/images/help.jpeg'),
              const SizedBox(height: 10),
              Expanded(
                child: ListView(
                  children: const [
                    Mytimeline(
                      isFirst: true,
                      isLast: false,
                      isPast: true,
                      eventCard: Text(
                        'The Image Scan option allows you to use your device’s camera to capture images and convert them to PDF.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Mytimeline(
                      isFirst: false,
                      isLast: false,
                      isPast: true,
                      eventCard: Text(
                        'The DOC Import feature allows you to import Word documents and convert them to PDF.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Mytimeline(
                      isFirst: false,
                      isLast: false,
                      isPast: false,
                      eventCard: Text(
                        'The PDF View feature allows you to open, view, and interact with PDF files',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Mytimeline(
                      isFirst: false,
                      isLast: false,
                      isPast: false,
                      eventCard: Text(
                          'The Image Convert option allows you to convert images stored on your device into PDF files.',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 15,
                          )),
                    ),
                    Mytimeline(
                      isFirst: false,
                      isLast: true,
                      isPast: false,
                      eventCard: Text(
                          'The PDF Merge option allows you to combine multiple PDF files into a single document.',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 15,
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
