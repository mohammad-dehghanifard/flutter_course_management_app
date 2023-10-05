import 'package:course_management_app/entities/course/course.dart';
import 'package:isar/isar.dart';

part 'teacher.g.dart';

@collection
class Teacher{
  Id id = Isar.autoIncrement;
  late String name;
  // هر مدرس میتونه مدرس یک دوره باشه(رابطه یک به یک)
  final course = IsarLink<Course>();
}