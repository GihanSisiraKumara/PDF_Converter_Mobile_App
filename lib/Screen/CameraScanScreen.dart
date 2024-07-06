import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class Camerascanscreen extends StatefulWidget {
  const Camerascanscreen({super.key, required String title});

  @override
  State<Camerascanscreen> createState() => _CamerascanscreenState();
}

class _CamerascanscreenState extends State<Camerascanscreen> {
  final MobileScannerController _controller = MobileScannerController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 252, 250, 251),
          centerTitle: true,
          title: const Text(
            'Camera Scan ',
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
        body: MobileScanner(
          controller: _controller,
          onDetect: (barcodes) {},
        ));
  }
}
