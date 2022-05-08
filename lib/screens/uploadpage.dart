import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:social_app_demo/provider/uploadpage.dart';
import 'package:social_app_demo/utilities/constants.dart';

class UploadPage extends StatelessWidget {
  const UploadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return ChangeNotifierProvider<UploadPageProvider>(
      create: (_) => UploadPageProvider(),
      child: Consumer<UploadPageProvider>(builder: (context, state, child) {
        return Scaffold(
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
            child: MaterialButton(
              onPressed: () => null,
              child: const Text(
                'Upload Video',
              ),
              color: Colors.white,
              shape:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
              padding: EdgeInsets.symmetric(
                  horizontal: _size.width * 0.3, vertical: 14),
            ),
          ),
          backgroundColor: Colors.black,
          body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                              title: Text(
                                'Select Video Thumbnail',
                                textAlign: TextAlign.center,
                                style: fontStyle,
                              ),
                              actions: [
                                Center(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      MaterialButton(
                                        onPressed: () => state
                                            .selectThumbnail(ImageSource.camera)
                                            .then((value) =>
                                                Navigator.of(context).pop()),
                                        child: const Text(
                                          'Upload from Camera',
                                        ),
                                        color: Colors.white,
                                        shape: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(14)),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: _size.width * 0.035,
                                            vertical: 16),
                                      ),
                                      SizedBox(
                                        height: _size.height * 0.02,
                                      ),
                                      MaterialButton(
                                        onPressed: () => state
                                            .selectThumbnail(
                                                ImageSource.gallery)
                                            .then((value) =>
                                                Navigator.of(context).pop()),
                                        child: const Text(
                                          'Upload from Gallery',
                                        ),
                                        color: Colors.white,
                                        shape: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(14)),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: _size.width * 0.035,
                                            vertical: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      height: _size.height * 0.2,
                      width: _size.width * 0.42,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(12)),
                      child: state.thumbnailPath == null
                          ? const Center(
                              child: Text(
                                'Select Thumbnail',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            )
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(state.thumbnailPath!,
                                  fit: BoxFit.cover),
                            ),
                    ),
                  ),
                  Container(
                    height: _size.height * 0.06,
                    width: _size.width * 0.90,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 16),
                    child: TextFormField(
                      controller: state.captionController,
                      cursorColor: Colors.white,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 12),
                          fillColor: Colors.amber,
                          focusColor: Colors.white,
                          hoverColor: Colors.amber,
                          hintText: 'Title of the video',
                          hintStyle: TextStyle(
                              color: Colors.grey.shade50.withOpacity(0.5)),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white))),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MaterialButton(
                        onPressed: () => state.selectVideo(ImageSource.camera),
                        child: const Text(
                          'Upload from Camera',
                        ),
                        color: Colors.white,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14)),
                        padding: EdgeInsets.symmetric(
                            horizontal: _size.width * 0.035, vertical: 14),
                      ),
                      MaterialButton(
                        onPressed: () => state.selectVideo(ImageSource.gallery),
                        child: const Text(
                          'Upload from Gallery',
                        ),
                        color: Colors.white,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14)),
                        padding: EdgeInsets.symmetric(
                            horizontal: _size.width * 0.035, vertical: 14),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 16),
                    child: TextFormField(
                      maxLines: 4,
                      textAlignVertical: TextAlignVertical.top,
                      textAlign: TextAlign.start,
                      controller: state.descriptionController,
                      cursorColor: Colors.white,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 40, horizontal: 16),
                          fillColor: Colors.amber,
                          focusColor: Colors.white,
                          hintMaxLines: 4,
                          hintText: 'Short Description of the video',
                          hintStyle: TextStyle(
                              color: Colors.grey.shade50.withOpacity(0.5)),
                          hoverColor: Colors.amber,
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white))),
                    ),
                  ),
                ]),
          ),
        );
      }),
    );
  }
}
