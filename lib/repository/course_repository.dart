import 'package:flutter_rw_courses/repository/repository.dart';
import 'package:flutter_rw_courses/model/course.dart';

import '../constants.dart';

class CourseRepository implements Repository {
  String dataURL =
      "https://api.raywenderlich.com/api/contents?filter[content_types][]=collection";

  @override
  Future<List<Course>> getCourses(int domainFilter) async {
    var courses = <Course>[];

    var url = dataURL;
    if (domainFilter != Constants.allFilter) {
      url += "&filter[domain_ids][]=$domainFilter";
    }


    return courses;
  }
}