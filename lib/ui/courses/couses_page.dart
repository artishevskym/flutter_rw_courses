import 'package:flutter/material.dart';
import 'package:flutter_rw_courses/model/course.dart';
import 'package:flutter_rw_courses/ui/courses/courses_controller.dart';

import '../../constants.dart';

class CoursesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  final _controller = CoursesController();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Course>>(
      future: _controller.fetchCourses(Constants.allFilter),
      builder: (context, snapshot) {
        var courses = snapshot.data;
        if (courses == null) {
          return Center(child: CircularProgressIndicator());
        }
        return Text(courses.toString());
      },
    );
  }
}