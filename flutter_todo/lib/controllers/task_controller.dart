import 'package:flutter_todo/db/db_helper.dart';
import 'package:get/get.dart';

import '../models/task.dart';

class TaskController extends GetxController {
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  // ui에서 데이터를 받아 db에 저장
  Future<int> addTask({Task? task}) async {
    return await DBHelper.insert(task);
  }
}
