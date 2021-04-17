import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/controllers/authController.dart';
import 'package:todo_app/controllers/user_controller.dart';
import 'package:todo_app/screens/home.dart';
import 'package:todo_app/screens/login.dart';

class Root extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return GetX(
      initState: (_) async {
        Get.put<UserController>(UserController());
      },
      builder: (_) {
        if (Get.find<AuthController>().user?.uid != null) {
          print(Get.find<AuthController>().user?.uid);
          return Home();
        } else {
          return Login();
        }
      },
    );
  }
}
