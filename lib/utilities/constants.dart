import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';

Logger l = Logger();

const SnackBar showSnackBar = SnackBar(
  content: Text('Hello There'),
  backgroundColor: Colors.amber,
);

final ImagePicker picker = ImagePicker();

TextStyle titleStyle = GoogleFonts.aladin(
  color: Colors.black,
  fontSize: 18,
);

TextStyle fontStyle = GoogleFonts.aladin(
  color: Colors.black,
  fontSize: 18,
);

TextStyle buttonFontStyle = GoogleFonts.aladin(
  color: Colors.white,
  fontSize: 18,
);
