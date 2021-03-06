import 'package:Minders/controllers/authController.dart';
import 'package:Minders/utils/appRouter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatelessWidget {
  void navigate() async {
    var controller = Get.find<AuthController>();
    await Future.delayed(Duration(seconds: 3));
    if (controller.user?.uid != null)
      Get.offAllNamed(AppRouter.mainBarRoute);
    else
      Get.offAllNamed(AppRouter.loginRoute);
  }

  @override
  Widget build(BuildContext context) {
    navigate();
    return Center(
        child: SizedBox(
            height: 250.0, child: Image.asset("assets/images/Hlogo.png")));
  }
}
