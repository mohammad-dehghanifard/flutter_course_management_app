import 'package:isar/isar.dart';

part 'course.g.dart';

@Collection()
class Course{
  // ایدی هر دوره به صورت افزایشی تولید میشه
  Id id = Isar.autoIncrement;
  late String title;
}