import 'package:course_management_app/entities/course/course.dart';
import 'package:course_management_app/entities/student/student.dart';
import 'package:course_management_app/entities/teacher/teacher.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarService{
  late Future<Isar> db;

  IsarService(){
    db = openDb();
  }


  Future<Isar> openDb() async {
    // تنها در صورتی که از دیتابیس نمونه ای وجود نداشته باشه، دیتابیس جدید ساخته میشه
    if(Isar.instanceNames.isEmpty){
      final dir = await getApplicationDocumentsDirectory();
      return await Isar.open(
          [CourseSchema,StudentSchema,TeacherSchema],
        directory: dir.path,
        inspector: true,
      );
    }
    return Future.value(Isar.getInstance());
  }
}