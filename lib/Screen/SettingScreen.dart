import 'package:flutter/material.dart';
import 'package:flutter_pdf_converter/Screen/About.dart';
import 'package:flutter_pdf_converter/Screen/Dashbord/testcampdf.dart';
import 'package:flutter_pdf_converter/Screen/FeedbackBord.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 252, 250, 251),
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
                const Color.fromARGB(255, 68, 211, 92)),
            backgroundColor: WidgetStateProperty.all<Color>(
              const Color.fromARGB(255, 180, 240, 200),
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
            iconColor: Colors.green,
            iconBgColor: const Color.fromARGB(255, 180, 240, 200),
            text: 'Scan',
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
            icon: Icons.pause_presentation_rounded,
            iconColor: Colors.green,
            iconBgColor: const Color.fromARGB(255, 180, 240, 200),
            text: 'Teams & Condition',
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
            icon: Icons.share_rounded,
            iconColor: Colors.green,
            iconBgColor: const Color.fromARGB(255, 180, 240, 200),
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
            iconColor: Colors.green,
            iconBgColor: const Color.fromARGB(255, 180, 240, 200),
            text: 'Help & Support',
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
            icon: Icons.message_rounded,
            iconColor: Colors.green,
            iconBgColor: const Color.fromARGB(255, 180, 240, 200),
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
            iconColor: Colors.green,
            iconBgColor: const Color.fromARGB(255, 180, 240, 200),
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
                color: Color.fromARGB(255, 71, 236, 79),
              ),
              onPressed: onTap,
            ),
          ],
        ),
      ),
    );
  }
}



























// Similarly define other pages: SharePage, HelpSupportPage, FeedbackPage, AboutUsPage
