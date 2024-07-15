import 'package:flutter/material.dart';
import 'package:flutter_pdf_converter/Screen/Dashbord/HomeScreen.dart';

class Teamscondition extends StatefulWidget {
  final String title;

  const Teamscondition({super.key, required this.title});

  @override
  _TeamsconditionState createState() => _TeamsconditionState();
}

class _TeamsconditionState extends State<Teamscondition> {
  bool isOk = false; // Initial state of the checkbox

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/Theams.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent, // Make Scaffold transparent
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 213, 227, 241),
              centerTitle: true,
              title: const Text(
                'Teams & Condition',
                style: TextStyle(
                    fontSize: 22,
                    color: Color.fromARGB(255, 57, 83, 109),
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

            body: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'General',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Text(
                    'The development of a mobile app involves multiple teams working together to ensure its success. The product management team defines the apps vision, strategy, and roadmap, conducting market research and setting requirements to meet user needs. The design team focuses on creating an intuitive and user-friendly interface, developing wireframes, mockups, and prototypes to guide the apps look and feel. The development team then brings these designs to life, writing code and integrating APIs to ensure the app functions correctly across different devices and platforms. Finally, the quality assurance (QA) team rigorously tests the app to identify and fix any bugs, ensuring it meets high standards of performance and reliability before release.',
                    textAlign: TextAlign.justify,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Publick',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Text(
                    'The development of a mobile app involves multiple teams working together to ensure its success. The product management team defines the apps vision, strategy, and roadmap, conducting market research and setting requirements to meet user needs. The design team focuses on creating an intuitive and user-friendly interface, developing wireframes, mockups, and prototypes to guide the apps look and feel',
                    textAlign: TextAlign.justify,
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isOk,
                      onChanged: (bool? newValue) {
                        setState(() {
                          isOk = newValue!;
                        });
                      },
                    ),
                    const Text('Agree and accept',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen(
                                title: '',
                              )),
                    );
                  },
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                      disabledForegroundColor: Colors.grey.withOpacity(0.38),
                      shadowColor: Colors.red,
                      elevation: 5,
                      textStyle: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold)),
                  child: const Text('Aggree'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
