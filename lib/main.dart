import 'package:flutter/material.dart';
import 'package:flutter_pdf_converter/Screen/Dashbord/HomeScreen.dart';
import 'package:flutter_pdf_converter/Screen/WellcomeScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isFirstLaunch = prefs.getBool('isFirstLaunch') ?? true;

  runApp(MyApp(isFirstLaunch: isFirstLaunch));
}

class MyApp extends StatelessWidget {
  final bool isFirstLaunch;

  const MyApp({super.key, required this.isFirstLaunch});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: ('inter'),
        useMaterial3: true,
      ),
      home: isFirstLaunch
          ? const WellcomeScreen()
          : const HomeScreen(
              title: '',
            ),
    );
  }
}
