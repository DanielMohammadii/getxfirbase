import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controler/firebase_controler.dart';

class HomePage extends GetWidget<FirebaseControler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              controller.signut();
            },
            child: Text('Signout'),
          ),
        ),
      ),
    );
  }
}
