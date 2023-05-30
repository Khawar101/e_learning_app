// ignore: file_names
import 'package:e_learning_app/courses/courses_list.dart';
import 'package:e_learning_app/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SuccessfulPurchase extends StatefulWidget {
  const SuccessfulPurchase({super.key});

  @override
  State<SuccessfulPurchase> createState() => _SuccessfulPurchaseState();
}

class _SuccessfulPurchaseState extends State<SuccessfulPurchase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 20, vertical: MediaQuery.of(context).size.height * 0.2),
        child: Column(
          children: [
            Center(
                child: Lottie.asset('assets/lottie/lottie_success.json',
                    width: 130, height: 130)),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            const BigText(text: "Successful purchase!", color: Colors.black),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const ListOfCourses())));
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                    color: const Color(0xff4873a6).withOpacity(0.7),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child:
                      ButtonText(text: "Start learning", color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
