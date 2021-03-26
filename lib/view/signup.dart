import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_flutter_2/controler/firebase_controler.dart';
import 'package:getx_flutter_2/view/login.dart';

class SignUp extends GetWidget<FirebaseControler> {
  final TextEditingController emailEditingControler = TextEditingController();
  final TextEditingController passwordEditingControler =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            children: [
              Text('Signup'),
              TextFormField(
                controller: emailEditingControler,
                decoration: InputDecoration(hintText: "Email"),
              ),
              TextFormField(
                controller: passwordEditingControler,
                decoration: InputDecoration(hintText: "Password"),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.signUpWithEmailAndPassword(
                      emailEditingControler.text,
                      passwordEditingControler.text);
                },
                child: Text('SignUp'),
              ),
              InkWell(
                  onTap: () {
                    Get.to(() => Login());
                  },
                  child: Text('LogIn')),
            ],
          ),
        )),
      ),
    );
  }
}
