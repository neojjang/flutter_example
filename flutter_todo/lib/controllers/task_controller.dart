import 'package:flutter_todo/db/db_helper.dart';
import 'package:get/get.dart';

import '../models/task.dart';

class TaskController extends GetxController {
  @override
  void onReady() {
    // TODO: implement onReady
    getTasks();
    super.onReady();
  }

  var taskList = <Task>[].obs;

  // ui에서 데이터를 받아 db에 저장
  Future<int> addTask({Task? task}) async {
    return await DBHelper.insert(task);
  }

  void getTasks() async {
    //
    List<Map<String, dynamic>> tasks = await DBHelper.query();

    taskList.assignAll(tasks.map((e) => new Task.fromJson(e)).toList());
  }

  void delete(Task task) async {
    await DBHelper.delete(task);
    getTasks();
  }

  void markTaskCompleted(int id) async {
    await DBHelper.update(id);
    getTasks();
  }
}
