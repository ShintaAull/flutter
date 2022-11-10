import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Container(
        margin: context.isPhone
            ? EdgeInsets.all(Get.width * 0.1)
            : EdgeInsets.all(Get.height * 0.1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
        ),
        //biru
        child: Row(children: [
          !context.isPhone
              ?
              //biru
              Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                      color: Colors.blue,
                    ),
                    // ignore: prefer_const_literals_to_create_immutables
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            // ignore: unnecessary_const
                            const Text(
                              'Welcome',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 70,
                              ),
                            ),
                            // ignore: unnecessary_const
                            const Text(
                              'Please Sign In',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
                            const Text(
                              'Start Journey With US',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ]),
                    ),
                  ),
                )
              : const SizedBox(),
          //putih
          Expanded(
            child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    context.isPhone
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Text(
                                "Welcome",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 35),
                              ),
                              const Text("Please Login",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15)),
                              const Text("Start Journey With Us.",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15)),
                            ],
                          )
                        : const SizedBox(),
                    Image.asset(
                      'assets/images/image.png.jpeg',
                      height: Get.height * 0.5,
                    ),
                    FloatingActionButton.extended(
                      onPressed: () => Get.toNamed(Routes.HOME),
                      label: Text('Sign In With Google'),
                      icon: Icon(Ionicons.logo_google, color: Colors.white),
                    ),
                  ],
                )),
          ),
        ]),
      ),
    );
  }
}
