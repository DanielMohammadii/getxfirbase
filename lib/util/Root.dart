import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_2/controler/firebase_controler.dart';
import 'package:getx_flutter_2/view/home_page.dart';
import 'package:getx_flutter_2/view/login.dart';

class Root extends GetWidget<FirebaseControler> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return (Get.find<FirebaseControler>().user != null)
          ? HomePage()
          : Login();
    });
  }
}
