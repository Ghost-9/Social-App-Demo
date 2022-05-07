import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_app_demo/provider/uploadpage.dart';

class UploadPage extends StatelessWidget {
  const UploadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<UploadPageProvider>(
      create: (_) => UploadPageProvider(),
      child: Consumer<UploadPageProvider>(builder: (context, state, child) {
        return const Scaffold(
          backgroundColor: Colors.black,
        );
      }),
    );
  }
}
