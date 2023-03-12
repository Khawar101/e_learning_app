import 'package:e_learning_app/forget_password/change-password-screen.dart';
import 'package:e_learning_app/forget_password/password-changed-Done.dart';
import 'package:e_learning_app/forget_password/phone-number-screen.dart';
import 'package:e_learning_app/profile-information/enter-profile-information.dart';
import 'package:e_learning_app/profile-information/profile-information-screen1.dart';
import 'package:e_learning_app/profile-information/setting-screen.dart';
import 'package:e_learning_app/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'forget_password/verify_otp.dart';


void main() async{
  
  runApp(const MyApp());

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const SignInScreen(),
    );
  }
}
