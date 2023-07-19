import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';

const COLLECTION_CONGREGATION = "CONGREGACOES";
const COLLECTION_MEMBER = "MEMBROS";

class RepositoryMember {
  static Future<void> postMember(Map<String, dynamic> member) async {
    await FirebaseFirestore.instance
        .collection(COLLECTION_CONGREGATION)
        .doc(member['congregationName'])
        .collection(COLLECTION_MEMBER)
        .doc(member['memberName'])
        .set(member);
  }

  static Future<void> getMember(congregationName, memberName) async {
    await FirebaseFirestore.instance
        .collection(COLLECTION_CONGREGATION)
        .doc(congregationName)
        .collection(COLLECTION_MEMBER)
        .doc(memberName)
        .get()
        .then((DocumentSnapshot doc) {
      final data = doc.data() as Map<String, dynamic>;
      print(data);
      return data;
    });
  }

  static Future<String> pickImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    var photoName;
    if (result != null) {
      Uint8List? fileBytes = result.files.first.bytes;
      String fileName = result.files.first.name;
      photoName = fileName;
      // Upload file
      await FirebaseStorage.instance
          .ref('Photos/$fileName')
          .putData(fileBytes!);
    }
    return " Photo Name $photoName";
  }
}
