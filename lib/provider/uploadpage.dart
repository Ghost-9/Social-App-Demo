import 'package:flutter/material.dart';
import 'package:social_app_demo/widgets/constants.dart';

class UploadPageProvider extends ChangeNotifier {
  Future<void> _uploadVideo(
      {required String title,
      required String pathName,
      required String description}) async {
    try {} catch (e) {
      l.e(e);
    }
  }

  Future _compressVideo({required String videoPath}) async {
    try {} catch (e) {
      l.e(e);
    }
  }
}
