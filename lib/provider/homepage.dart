import 'package:flutter/material.dart';
import 'package:social_app_demo/screens/explore.dart';
import 'package:social_app_demo/screens/profilepage.dart';
import 'package:social_app_demo/screens/uploadpage.dart';

class HomePageProvider extends ChangeNotifier {
  int _currentIndex = 1;
  int get currentIndex => _currentIndex;

  static final List<Widget> _pages = [
    const UploadPage(),
    const ProfilePage(),
    const ExplorePage(),
  ];

  List<Widget> get pages => _pages;

  set setCurrentIndex(int value) {
    _currentIndex = value;
    notifyListeners();
  }
}
