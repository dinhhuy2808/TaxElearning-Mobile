import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/bloc/course/course-state.dart';

final DateTime timestamp = DateTime.now();

class BottomNavigationBarProvider with ChangeNotifier {
  int _currentIndex = 0;

  get currentIndex => _currentIndex;

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}

class HomeCourse extends StatefulWidget {
  @override
  CourseState createState() => CourseState();
}


