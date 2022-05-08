import 'package:flutter/material.dart';

class ProfilePageProvider extends ChangeNotifier {
  String _friendStatusCheck = 'Follow';
  Color _friendFollowColor = Colors.grey.shade400;
  Color get friendFollowColor => _friendFollowColor;
  String get friendStatusCheck => _friendStatusCheck;
  set setFriendStatus(String value) {
    if (value == "Follow") {
      _friendStatusCheck = "Following";
      _friendFollowColor = Colors.blue;
    } else if (value == "Following") {
      _friendStatusCheck = "Follow";
      _friendFollowColor = Colors.grey.shade400;
    }

    notifyListeners();
  }
}
