import 'package:flutter_rw_courses/model/course.dart';

abstract class Repository {
  Future<List<Course>> getCourses(int domainFilter);
}