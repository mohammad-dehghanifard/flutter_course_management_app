import 'package:course_management_app/entities/student/student.dart';
import 'package:course_management_app/entities/teacher/teacher.dart';
import 'package:isar/isar.dart';

part 'course.g.dart';

@Collection()
class Course{
  // ایدی هر دوره به صورت افزایشی تولید میشه
  Id id = Isar.autoIncrement;
  late String title;
  @Backlink(to: "course")
  final teacher = IsarLink<Teacher>();
  @Backlink(to: "courses")
  final students = IsarLinks<Student>();
}