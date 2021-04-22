import 'package:flutter/material.dart';
import 'package:flutter_rw_courses/rwcourses_app.dart';
import 'package:flutter_rw_courses/state/filter_state_container.dart';
import 'package:flutter_rw_courses/strings.dart';

void main() {
  runApp(
    FilterStateContainer(
      child: MaterialApp(
        title: Strings.appTitle,
        theme: ThemeData(primaryColor: Colors.green.shade800),
        home: RWCoursesApp(),
      ),
    ),
  );
}
