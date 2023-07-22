import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wings_mobile/entities/user/user_entity.dart';
import 'package:wings_mobile/presentation/pages/home_page.dart';
import 'package:wings_mobile/utils/dialogs.dart';

import '../../services/api_service.dart';
import '../../services/api_service_impl.dart';

class LoginController extends GetxController {
  ApiService apiService = ApiServiceImpl();
  final formKey = GlobalKey<FormState>();

  final tcUsername = TextEditingController();
  final tcPassword = TextEditingController();

  Future<void> getUserByUsername() async {
    if (formKey.currentState!.validate()) {
      final response = await apiService.getUserByUsername(tcUsername.text);
      response.fold((fail) => Dialogs.dialogMessage("Oppss", fail.errorMessage),
          (data) => login(data));
    }
  }

  Future<void> login(UserEntity user) async {
    final body = {
      "email": user.email,
      "password": tcPassword.text,
    };

    final response = await apiService.login(body);
    response.fold((fail) => Dialogs.dialogMessage("Oppss", fail.errorMessage),
        (r) => Get.offAll(() => HomePage()));
  }
}
