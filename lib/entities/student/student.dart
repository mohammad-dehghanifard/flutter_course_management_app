import 'package:course_management_app/entities/course/course.dart';
import 'package:isar/isar.dart';

part 'student.g.dart';

@collection
class Student{
  Id id = Isar.autoIncrement;
  late String name;
  // هر دانش آموز ممکنه چندتا درس داشته باشه(رابطه یک به چند)
  final courses = IsarLinks<Course>();
}