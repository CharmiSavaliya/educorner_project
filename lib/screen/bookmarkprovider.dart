import 'package:flutter/material.dart';
import 'package:educorner_project/education.model/educationmodel.dart';

class BookmarkProvider extends ChangeNotifier {
  List<CourseInfo> _bookmarkedCourses = [];

  List<CourseInfo> get bookmarkedCourses => _bookmarkedCourses;

  void toggleBookmark(CourseInfo course) {
    if (_bookmarkedCourses.contains(course)) {
      _bookmarkedCourses.remove(course);
    } else {
      _bookmarkedCourses.add(course);
    }
    notifyListeners();
  }

  bool isBookmarked(CourseInfo course) {
    return _bookmarkedCourses.contains(course);
  }
}
