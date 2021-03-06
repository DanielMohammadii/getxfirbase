import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_2/controler/firebase_contorler_binding.dart';
import 'package:getx_flutter_2/util/Root.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: FirebaseBinding(),
      title: 'Flutter Demo',
      home: Root(),
    );
  }
}
