import 'package:isar/isar.dart';

part 'course.g.dart';

@Collection()
class Course{
  Id id = Isar.autoIncrement;
  late String title;
}