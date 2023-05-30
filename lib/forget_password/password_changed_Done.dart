// ignore: file_names
import 'package:e_learning_app/log-in-screens/login_screen.dart';
import 'package:e_learning_app/utils/app_utils.dart';
import 'package:flutter/material.dart';


class PasswordChangedDone extends StatefulWidget {
  const PasswordChangedDone({super.key});

  @override
  State<PasswordChangedDone> createState() => _PasswordChangedDoneState();
}

class _PasswordChangedDoneState extends State<PasswordChangedDone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   //   backgroundColor: const Color(0xffe4f1f8),
      body: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.22,
            left: 20,
            right: 20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset('assets/icons/icons8-popper-confetti-96.png'),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.085),
            const BigText(
              text: "Password Changed",
              color: Colors.black,
            ),
            const BigText(
              text: "Successfully!",
              color: Colors.black,
            ),
            const SizedBox(height: 8),
            const BigSubText(
              text: "If you are going to use a passage of Lorem",
            ),
            const BigSubText(
              text: "lpusm.You need to be sure there isn't",
            ),
            const BigSubText(
              text: "anything embarrassing.",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LogInScreen()),
                );
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff4873a6),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                    child: ButtonText(
                  text: 'Sign in',
                  color: Colors.white,
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
