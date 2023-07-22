import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:wings_mobile/presentation/pages/home_page.dart';
import 'package:wings_mobile/presentation/pages/login_page.dart';

class WelcomeController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 3), () {
      if (FirebaseAuth.instance.currentUser != null) {
        Get.offAll(() => HomePage());
      } else {
        Get.offAll(() => LoginPage());
      }
    });
    super.onInit();
  }
}
