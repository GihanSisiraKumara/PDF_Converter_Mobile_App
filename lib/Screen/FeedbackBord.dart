import 'package:flutter/material.dart';

class FeedbackBord extends StatefulWidget {
  const FeedbackBord({super.key, required String title});

  @override
  State<FeedbackBord> createState() => _FeedbackBordState();
}

class _FeedbackBordState extends State<FeedbackBord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 252, 250, 251),
        centerTitle: true,
        title: const Text(
          'Feedback',
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
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              child: Image.asset('assets/images/contact1.png'),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Name',
                        hintText: 'Enter your name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter your email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Feedback',
                        hintText: 'Enter your feedback',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: Container(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 89, 165, 227),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Submit',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'OR Connect with us on social media',
              style: TextStyle(
                color: Color.fromARGB(255, 40, 77, 108),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Tab(
                  icon: Image.asset('assets/images/facebook1.png'),
                ),
                const SizedBox(
                  width: 30,
                ),
                Tab(
                  icon: Image.asset('assets/images/linked.png'),
                ),
                const SizedBox(
                  width: 20,
                ),
                Tab(
                  icon: Image.asset('assets/images/Github1.png'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
