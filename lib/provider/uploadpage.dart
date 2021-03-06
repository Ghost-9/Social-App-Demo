import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_app_demo/utilities/constants.dart';

class UploadPageProvider extends ChangeNotifier {
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController captionController = TextEditingController();
  String? _thumbnailPath;
  String? get thumbnailPath => _thumbnailPath;
  String? _videoPath;
  String? get videoPath => _videoPath;

  Future<void> uploadVideo(

      //   required String title,
      // required String pathName,
      // required String description
      ) async {
    try {
      _compressVideo(videoPath: _videoPath!);
    } catch (e) {
      l.e(e);
    } finally {
      notifyListeners();
    }
  }

  Future _compressVideo({required String videoPath}) async {
    try {} catch (e) {
      l.e(e);
    } finally {
      notifyListeners();
    }
  }

  Future<void> selectVideo(ImageSource _source) async {
    try {
      final XFile? video = await picker.pickVideo(
          source: _source, maxDuration: const Duration(seconds: 60));
      _videoPath = video!.path;
    } catch (e) {
      l.e(e);
    } finally {
      notifyListeners();
    }
  }

  Future<void> selectThumbnail(ImageSource _source) async {
    try {
      final XFile? videoThumbnail = await picker.pickImage(source: _source);
      if (videoThumbnail != null) {
        _thumbnailPath = videoThumbnail.path;
      }
    } catch (e) {
      l.e(e);
    } finally {
      notifyListeners();
    }
  }
}

Future<void> getLostData() async {
  final LostDataResponse response = await picker.retrieveLostData();
  if (response.isEmpty) {
    return;
  }
  if (response.files != null) {
    for (final XFile file in response.files!) {
      l.wtf(file);
    }
  } else {
    l.e(response.exception);
  }
}
