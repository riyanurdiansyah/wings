import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wings_mobile/firebase_options.dart';
import 'package:wings_mobile/presentation/pages/home_page.dart';
import 'package:wings_mobile/presentation/pages/login_page.dart';
import 'package:wings_mobile/presentation/pages/welcome_page.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Wings Mobile",
      initialRoute: "/welcome",
      getPages: [
        GetPage(
          name: "/welcome",
          page: () => WelcomePage(),
        ),
        GetPage(
          name: "/signin",
          page: () => LoginPage(),
        ),
        GetPage(
          name: "/home",
          page: () => HomePage(),
        ),
      ],
    );
  }
}
