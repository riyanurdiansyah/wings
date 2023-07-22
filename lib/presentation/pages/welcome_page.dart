import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wings_mobile/presentation/controllers/welcome_controller.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({super.key});

  final welcomeC = Get.put(WelcomeController());

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: FlutterLogo()),
    );
  }
}
