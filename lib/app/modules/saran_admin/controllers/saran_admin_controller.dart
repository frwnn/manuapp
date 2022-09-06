import 'dart:io';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class SaranAdminController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<QuerySnapshot<Object?>> getData() async {
    CollectionReference sarans = firestore.collection("saran");
    return sarans.get();
  }

  Stream<QuerySnapshot<Object?>> streamData() {
    CollectionReference sarans = firestore.collection("saran");
    return sarans.snapshots();
  }

  void getPDF() async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
          pageFormat: PdfPageFormat.a4,
          build: (pw.Context context) {
            return pw.Center(
                child: pw.Text(
                    "${streamData().map((snapshot) => snapshot.docs.toString())}"));
          }),
    );
    Uint8List bytes = await pdf.save();

    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/kritiksaran.pdf');
    await file.writeAsBytes(bytes);
    await OpenFile.open(file.path);
  }
}
