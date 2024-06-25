import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:permission_handler/permission_handler.dart';

class TestHomePage extends StatefulWidget {
  const TestHomePage({super.key, required String title});

  @override
  _TestHomePageState createState() => _TestHomePageState();
}

class _TestHomePageState extends State<TestHomePage> {
  final ImagePicker _picker = ImagePicker();
  final List<File> _images = [];

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _images.add(File(pickedFile.path));
      });
    }
  }

  Future<void> _createPdf() async {
    bool permissionGranted = await _requestPermission(Permission.storage);

    if (permissionGranted) {
      final pdf = pw.Document();
      for (var img in _images) {
        final image = pw.MemoryImage(img.readAsBytesSync());
        pdf.addPage(pw.Page(build: (pw.Context context) {
          return pw.Center(child: pw.Image(image));
        }));
      }

      Directory? directory;
      if (Platform.isAndroid) {
        directory = Directory('/storage/emulated/0/Documents');
        /*(await getExternalStorageDirectories(
                type: StorageDirectory.documents))
            ?.first;*/
      } else if (Platform.isIOS) {
        directory = await getApplicationDocumentsDirectory();
      }

      if (directory == null) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Unable to get directory path")));
        return;
      }

      String randomFileName = 'pdfappdoc${Random().nextInt(10000)}.pdf';
      final file = File(path.join(directory.path, randomFileName));
      await file.writeAsBytes(await pdf.save());

      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("PDF Saved at ${file.path}")));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Permission denied")));
    }
  }

  Future<bool> _requestPermission(Permission permission) async {
    PermissionStatus status = await permission.status;
    print('Initial permission status: $status');

    if (status.isGranted) {
      return true;
    } else {
      PermissionStatus result = await permission.request();
      print('Permission request result: $result');
      return result == PermissionStatus.granted;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Document Capture App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => _pickImage(ImageSource.camera),
              child: const Text('Capture Image from Camera'),
            ),
            ElevatedButton(
              onPressed: () => _pickImage(ImageSource.gallery),
              child: const Text('Import Image from Gallery'),
            ),
            ElevatedButton(
              onPressed: _createPdf,
              child: const Text('Convert to PDF'),
            ),
            _images.isNotEmpty
                ? Expanded(
                    child: ListView.builder(
                      itemCount: _images.length,
                      itemBuilder: (context, index) =>
                          Image.file(_images[index]),
                    ),
                  )
                : const Text('No images selected.'),
          ],
        ),
      ),
    );
  }
}
