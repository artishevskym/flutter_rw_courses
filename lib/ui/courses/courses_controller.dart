import 'package:flutter_rw_courses/repository/course_repository.dart';
import 'package:flutter_rw_courses/repository/repository.dart';
import 'package:flutter_rw_courses/model/course.dart';

class CoursesController {
  final Repository _repository = CourseRepository();

  Future<List<Course>> fetchCourses(int domainFilter) {
    return _repository.getCourses(domainFilter);
  }
}