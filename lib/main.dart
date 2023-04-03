

import 'package:e_learning_app/forget_password/change-password-screen.dart';
import 'package:e_learning_app/forget_password/password-changed-Done.dart';
import 'package:e_learning_app/forget_password/phone-number-screen.dart';
import 'package:e_learning_app/profile-information/base.dart';
import 'package:e_learning_app/profile-information/enter-profile-information.dart';
import 'package:e_learning_app/profile-information/profile-information-screen1.dart';
import 'package:e_learning_app/profile-information/setting-screen.dart';
import 'package:e_learning_app/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Acount_screen.dart';
import 'Time/popup-screen.dart';
import 'Time/timer.dart';
import 'booking-screen.dart';
import 'courses/Poster-screen.dart';
import 'courses/comment.dart';
import 'courses/detail.dart';
import 'courses/project-data.dart';
import 'forget_password/verify_otp.dart';
import 'log-in-screens/login-screen.dart';
import 'log-in-screens/verify-screen.dart';
import 'notifications/my-activity.dart';
import 'notifications/no-network.dart';
import 'notifications/no-notificatioin.dart';
import 'notifications/no-products.dart';
import 'notifications/no-videos.dart';
import 'notifications/notifications.dart';
import 'payment/add-payment.dart';
import 'payment/checkout-screen.dart';
import 'payment/enhans-screen1.dart';
import 'payment/payment-method1.dart';
import 'payment/payment-success.dart';
import 'payment/scan-card.dart';
import 'payment/successful-purchased.dart';
import 'profile-information/home-screeen1.dart';
import 'profile-information/home-screen2.dart';
import 'profile-information/home-screen3.dart';
import 'profile-information/home-screen4.dart';
import 'saved-screens/save-list.dart';
import 'saved-screens/save-screen.dart';
import 'search-pages/e-book-search.dart';
import 'search-pages/product-search.dart';
import 'search-pages/search-filter.dart';
import 'search-pages/welcome-screen.dart';
import 'splash-screens/splash_screen.dart';
import 'student-profile-setting/calls-screen.dart';
import 'student-profile-setting/popular-teachers.dart';
import 'student-profile-setting/student-profile.dart';
import 'student-profile-setting/student-setting.dart';
import 'student-profile-setting/teacher-booking.dart';
import 'tracking-order.dart';

void main() async {
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
      home:    const CourseDetailPage(),
    );
  }
}
