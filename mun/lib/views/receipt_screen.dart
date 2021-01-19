import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class ReceiptScreen extends StatefulWidget {
  @override
  _ReceiptScreenState createState() => _ReceiptScreenState();
}

class _ReceiptScreenState extends State<ReceiptScreen> {

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          'Receipt',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        )),
        leading: Container(
          width: w * 0.1,
        ),
        actions: [
          Container(
            width: w * 0.15,
          )
        ],
      ),
      body: PdfPreview(
        build: (format) => _generatePdf(format, "Thank You for Registering"),
      ),
    );
      // body: Container(
      //   child: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         SizedBox(
      //           height: h * 0.3,
      //         ),
      //         Text(
      //           'Thank You for Registering !',
      //           style: Theme.of(context).textTheme.headline6,
      //         ),
      //         SizedBox(
      //           height: h * 0.4,
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.only(bottom: 20.0),
      //           child: GestureDetector(
      //             onTap: () {},
      //             child: Container(
      //               width: w * 0.8,
      //               height: h * 0.07,
      //               child: Center(
      //                   child: Text(
      //                 'Print Receipt',
      //                 style: Theme.of(context).textTheme.headline6,
      //               )),
      //               color: Colors.grey.shade400,
      //             ),
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
   // );
  }
}
Future<Uint8List> _generatePdf(PdfPageFormat format, String title) async {
  final pdf = pw.Document();

  pdf.addPage(
    pw.Page(
      pageFormat: format,
      build: (context) {
        return pw.Center(
          child: pw.Text(title),
        );
      },
    ),
  );

  return pdf.save();
}
