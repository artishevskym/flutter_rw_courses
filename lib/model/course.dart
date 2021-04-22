class Course {
  final String courseId;
  final String name;
  final String description;

  Course(this.courseId, this.name, this.description);

  Course.fromJson(Map<String, dynamic> json)
      : courseId = json["id"],
        name = json["attributes"]["name"],
        description = json["attributes"]["description_plain_text"];

  @override
  String toString() {
    return name;
  }
}
