import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdf_converter/Screen/Dashbord/testcampdf.dart';
import 'package:flutter_pdf_converter/Screen/SettingScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: SizedBox(
                width: 280, // Set the desired width
                height: 50,
                child: TextField(
                  // onChanged: (value) => _runFilter(value),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                    suffixIcon: Icon(Icons.search),
                    hintText: "Search",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 0),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsScreen(),
                  ),
                );
              },
              child: CircleAvatar(
                radius: 20,
                backgroundColor: const Color.fromARGB(255, 247, 250, 251),
                child: ClipOval(
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: Image.asset(
                      'assets/images/setting2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 251, 249, 249),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  crossAxisSpacing: 40,
                  mainAxisSpacing: 30,
                  children: [
                    // const SizedBox(height: 5),
                    itemDashboard(
                      'Scan',
                      CupertinoIcons.qrcode_viewfinder,
                      const Color.fromARGB(255, 147, 236, 192),
                      () {
                        // Use the function to navigate to the desired page
                        // Navigator.push(
                        // context,
                        // MaterialPageRoute(
                        // builder: (context) =>
                        // const ConnectScreen(title: 'Analytics & Exam'),
                        // ),
                        // );
                      },
                      context,
                    ),
                    itemDashboard(
                      'Doc',
                      CupertinoIcons.doc,
                      const Color.fromARGB(255, 122, 203, 234),
                      () {
                        // Use the function to navigate to the desired page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const TestHomePage(title: 'Analytics & Exam'),
                          ),
                        );
                      },
                      context,
                    ),
                    itemDashboard(
                      'PDF',
                      CupertinoIcons.doc_on_doc,
                      const Color.fromARGB(255, 222, 98, 96),
                      () {
                        // Use the function to navigate to the desired page
                        // Navigator.push(
                        // context,
                        // MaterialPageRoute(
                        // builder: (context) =>
                        // const bellBord(title: 'Analytics & Exam'),
                        // ),
                        // );
                      },
                      context,
                    ),
                    itemDashboard(
                      'Image',
                      CupertinoIcons.photo_on_rectangle,
                      const Color.fromARGB(255, 108, 188, 206),
                      () {
                        // Use the function to navigate to the desired page
                        // Navigator.push(
                        // context,
                        // MaterialPageRoute(
                        // builder: (context) =>
                        // const qrscannerBord(title: 'Analytics & Exam'),
                        // ),
                        // );
                      },
                      context,
                    ),
                    itemDashboard(
                      'merg',
                      CupertinoIcons.arrow_merge,
                      const Color.fromARGB(255, 241, 94, 126),
                      () {
                        // Use the function to navigate to the desired page
                        // Navigator.push(
                        // context,
                        // MaterialPageRoute(
                        // builder: (context) =>
                        // const eservicessBord(title: 'Analytics & Exam'),
                        // ),
                        // );
                      },
                      context,
                    ),
                    itemDashboard(
                      'File',
                      CupertinoIcons.folder,
                      const Color.fromARGB(255, 212, 202, 85),
                      () {
                        // Use the function to navigate to the desired page
                        // Navigator.push(
                        // context,
                        // MaterialPageRoute(
                        // builder: (context) =>
                        // const ConnectScreen(title: 'Analytics & Exam'),
                        // ),
                        // );
                      },
                      context,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'Recent Files',
                      style: TextStyle(
                        color: Color.fromARGB(255, 192, 142, 142),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Row(
                  children: [
                    Text(
                      'See All',
                      style: TextStyle(
                        color: Color.fromARGB(255, 17, 148, 93),
                        fontSize: 15,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color.fromARGB(255, 17, 148, 93),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget itemDashboard(
    String title,
    IconData iconData,
    Color background,
    VoidCallback onTap,
    BuildContext context,
  ) =>
      GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 5),
                color: Theme.of(context).primaryColor.withOpacity(.3),
                spreadRadius: 2,
                blurRadius: 7,
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: background,
                  shape: BoxShape.circle,
                ),
                child: Icon(iconData, color: Colors.white),
              ),
              const SizedBox(height: 8),
              Text(title.toUpperCase(),
                  style: Theme.of(context).textTheme.titleMedium),
            ],
          ),
        ),
      );
}
