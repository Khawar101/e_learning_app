// ignore: file_names
import 'package:e_learning_app/forget_password/password-changed-Done.dart';
import 'package:e_learning_app/utils/app_utils.dart';
import 'package:e_learning_app/utils/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  bool visibleCheck = true;
  bool visibleCheck2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
    //  backgroundColor: const Color(0xffe4f1f8),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.14),
                Center(
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border:
                          Border.all(color: const Color(0xff4873a6),width: 1),
                    ),
                    child: Center(
                      child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: const Color(0xff4873a6),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Image.asset(
                            'assets/icons/lock-icon.png',
                          ))),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                const BigText(
                  text: "Change Password",
                  color: Colors.black,
                ),
                const SizedBox(height: 8),
                const BigSubText(
                  text: "Your Password length consists of ",
                ),
                const BigSubText(
                  text: "6 characters",
                ),
                const SizedBox(height: 25),
                Column(
                  children: [
                    CustomTextFormField(
                      hintText: 'New Password',
                      isObscureText: visibleCheck,
                      suffix: GestureDetector(
                        onTap: () {
                          visibleCheck = !visibleCheck;
                          setState(() {});
                        },
                        child: Icon(
                          visibleCheck == true
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    CustomTextFormField(
                        hintText: 'Confirm Password',
                        isObscureText: visibleCheck2,
                        suffix: GestureDetector(
                          onTap: () {
                            visibleCheck2 = !visibleCheck2;
                            setState(() {});
                          },
                          child: Icon(
                            visibleCheck2 == true
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: Colors.black,
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.035,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PasswordChangedDone()),
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
                      text: 'Save Password',
                      color: Colors.white,
                    )),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
