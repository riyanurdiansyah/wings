import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wings_mobile/utils/validators.dart';

import '../controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final loginC = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 35,
              ),
              const SizedBox(
                width: double.infinity,
                height: 80,
                child: FlutterLogo(),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text("Login to your account"),
              const SizedBox(
                height: 35,
              ),
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: Form(
                    key: loginC.formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: loginC.tcUsername,
                          validator: (val) => Validators.requiredField(val!),
                          decoration: InputDecoration(
                            hintText: "username",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 0.4,
                                color: Colors.grey.shade300,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        TextFormField(
                          controller: loginC.tcPassword,
                          obscureText: true,
                          validator: (val) => Validators.requiredField(val!),
                          decoration: InputDecoration(
                            hintText: "password",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 0.4,
                                color: Colors.grey.shade300,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () => loginC.getUserByUsername(),
                            child: const Text("LOGIN"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
