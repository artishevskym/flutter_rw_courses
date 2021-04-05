import 'package:flutter/material.dart';
import 'package:flutter_rw_courses/strings.dart';
import 'package:flutter_rw_courses/ui/courses/couses_page.dart';

class RWCoursesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.appTitle),
      ),
      body: CoursesPage(),
    );
  }
}
