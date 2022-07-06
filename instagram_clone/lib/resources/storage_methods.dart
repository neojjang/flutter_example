import 'dart:typed_data';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class StorageMethods {
  final FirebaseStorage _firebaseStorage = FirebaseStorage.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // add image to firebase storage
  Future<String> uploadImageToStorage(
      String childName, Uint8List file, bool isPost) async {
    // folder childName/uid/
    Reference ref = _firebaseStorage
        .ref()
        .child(/*folder*/ childName)
        .child(_auth.currentUser!.uid);
    UploadTask uploadTask = ref.putData(file);

    uploadTask.catchError((e) {
      print(e);
    });
    TaskSnapshot snap = await uploadTask;
    String downloadUrl = await snap.ref.getDownloadURL();
    return downloadUrl;
  }
}
