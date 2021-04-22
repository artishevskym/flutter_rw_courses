import 'package:flutter/material.dart';
import 'package:flutter_rw_courses/model/course.dart';
import 'package:flutter_rw_courses/repository/course_repository.dart';
import 'package:flutter_rw_courses/ui/courses/courses_controller.dart';

import '../../constants.dart';

class CoursesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  final _controller = CoursesController(CourseRepository());

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Course>>(
      future: _controller.fetchCourses(Constants.allFilter),
      builder: (context, snapshot) {
        var courses = snapshot.data;
        if (courses == null) {
          return Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemCount: courses.length,
          itemBuilder: (BuildContext context, int position) {
            return _buildRow(courses[position]);
          },
        );
      },
    );
  }

  Widget _buildRow(Course course) {
    return Text(course.name);
  }
}