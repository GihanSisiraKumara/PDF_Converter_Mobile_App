import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;

class PdfScannerPage extends StatefulWidget {
  const PdfScannerPage({super.key});

  @override
  _PdfScannerPageState createState() => _PdfScannerPageState();
}

class _PdfScannerPageState extends State<PdfScannerPage> {
  final ImagePicker _picker = ImagePicker();
  final List<File> _images = [];

  Future<void> _takePicture() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image == null) return;

    setState(() {
      _images.add(File(image.path));
    });
  }

  Future<void> _createPdf() async {
    final pdf = pw.Document();

    for (var img in _images) {
      final image = pw.MemoryImage(img.readAsBytesSync());
      pdf.addPage(pw.Page(build: (pw.Context context) {
        return pw.Center(child: pw.Image(image));
      }));
    }

    try {
      Directory? directory = await getExternalStorageDirectory();
      if (directory != null) {
        String folderName = "PDF Converter";
        String folderPath = '${directory.path}/$folderName';
        Directory folderDirectory = Directory(folderPath);

        // Check if folder exists before creating
        if (!folderDirectory.existsSync()) {
          await folderDirectory.create(recursive: true);
        }

        String filePath = '$folderPath/scanned_document.pdf';
        File file = File(filePath);
        await file.writeAsBytes(await pdf.save());

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('PDF Saved at ${file.path}')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text('Error: External storage directory not found')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error saving PDF: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Scanner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _takePicture,
              child: const Text('Take Picture'),
            ),
            ElevatedButton(
              onPressed: _createPdf,
              child: const Text('Create PDF'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _images.length,
                itemBuilder: (context, index) {
                  return Image.file(_images[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
