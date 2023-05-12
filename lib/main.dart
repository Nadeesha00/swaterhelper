import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swaterhelper/auth_controller.dart';
import 'package:swaterhelper/first_page.dart';
import 'package:swaterhelper/signup_page.dart';
import 'package:swaterhelper/splash_screen.dart';
import 'package:swaterhelper/welcome_page.dart';
import 'package:swaterhelper/navbar.dart';



import 'login_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value)=>Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:const SplashScreen(),
    );
  }
}






