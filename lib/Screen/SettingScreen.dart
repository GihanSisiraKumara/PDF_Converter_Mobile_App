import 'package:flutter/material.dart';
import 'package:flutter_pdf_converter/Screen/About.dart';
import 'package:flutter_pdf_converter/Screen/CameraScanScreen.dart';
import 'package:flutter_pdf_converter/Screen/Dashbord/testcampdf.dart';
import 'package:flutter_pdf_converter/Screen/FeedbackBord.dart';
import 'package:flutter_pdf_converter/Screen/HelpCondition.dart';
import 'package:flutter_pdf_converter/Screen/TeamsCondition.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/blue2.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent, // Make the scaffold transparent
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 217, 234, 251),
            centerTitle: true,
            title: const Text(
              'Setting',
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

          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: Text(
                  'General Setting',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              _buildSettingItem(
                icon: Icons.qr_code_scanner_rounded,
                iconColor: const Color.fromARGB(255, 55, 128, 201),
                iconBgColor: const Color.fromARGB(255, 163, 226, 247),
                text: 'Scan',
                onTap: () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Camerascanscreen(
                        title: '',
                      ),
                    ),
                  );
                  if (result != null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Scan Results: $result'),
                      ),
                    );
                  }
                },
              ),
              _buildSettingItem(
                icon: Icons.pause_presentation_rounded,
                iconColor: const Color.fromARGB(255, 55, 128, 201),
                iconBgColor: const Color.fromARGB(255, 163, 226, 247),
                text: 'Teams & Condition',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Teamscondition(
                              title: '',
                            )),
                  );
                },
              ),
              _buildSettingItem(
                icon: Icons.share_rounded,
                iconColor: const Color.fromARGB(255, 55, 128, 201),
                iconBgColor: const Color.fromARGB(255, 163, 226, 247),
                text: 'Share',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TestHomePage(
                              title: '',
                            )),
                  );
                },
              ),
              _buildSettingItem(
                icon: Icons.help,
                iconColor: const Color.fromARGB(255, 55, 128, 201),
                iconBgColor: const Color.fromARGB(255, 163, 226, 247),
                text: 'Help & Support',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Helpcondition(
                              title: '',
                            )),
                  );
                },
              ),
              _buildSettingItem(
                icon: Icons.message_rounded,
                iconColor: const Color.fromARGB(255, 55, 128, 201),
                iconBgColor: const Color.fromARGB(255, 163, 226, 247),
                text: 'Feedback',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FeedbackBord(
                              title: '',
                            )),
                  );
                },
              ),
              _buildSettingItem(
                icon: Icons.person_2_rounded,
                iconColor: const Color.fromARGB(255, 55, 128, 201),
                iconBgColor: const Color.fromARGB(255, 163, 226, 247),
                text: 'About Us',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const About(
                              title: '',
                              description: '',
                            )),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSettingItem({
    required IconData icon,
    required Color iconColor,
    required Color iconBgColor,
    required String text,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: iconBgColor,
              ),
              child: Icon(
                icon,
                color: iconColor,
                size: 30,
              ),
            ),
            const SizedBox(width: 20),
            Text(
              text,
              style: const TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Color.fromARGB(255, 55, 71, 86),
              ),
              onPressed: onTap,
            ),
          ],
        ),
      ),
    );
  }
}
