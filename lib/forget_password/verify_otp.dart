import 'package:e_learning_app/forget_password/change-password-screen.dart';
import 'package:e_learning_app/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class EnterOtpScreen extends StatefulWidget {
  const EnterOtpScreen({super.key});

  @override
  State<EnterOtpScreen> createState() => _EnterOtpScreenState();
}

class _EnterOtpScreenState extends State<EnterOtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffe4f1f8),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.14),
              Center(
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border:
                        Border.all(color: const Color(0xff4873a6), width: 1),
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
                text: "Enter a Code",
                color: Colors.black,
              ),
              Padding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height * 0.015),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text:
                        'We sent a verification code to \n your phonr number ',
                    style: GoogleFonts.ibmPlexSans(
                        color: Colors.black, fontSize: 12),
                    children: const [
                      TextSpan(
                        text: '(+92)3012345678',
                        style: TextStyle(
                          color: const Color(0xff4873a6),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25),
              const PinputExample(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChangePasswordScreen()),
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
                    text: 'Change Password',
                    color: Colors.white,
                  )),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Resend Code",
                  style: GoogleFonts.ibmPlexSans(
                     color: const Color(0xff4873a6),
                      fontSize: 13,
                      decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PinputExample extends StatefulWidget {
  const PinputExample({Key? key}) : super(key: key);

  @override
  State<PinputExample> createState() => _PinputExampleState();
}

class _PinputExampleState extends State<PinputExample> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const focusedBorderColor = Colors.black12;
    const fillColor = Color.fromRGBO(243, 246, 249, 0);
    const borderColor = Colors.black12;

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: borderColor),
      ),
    );

    // return TextField(
    //   contextMenuBuilder: (_, EditableTextState editableTextState) {
    //     print('HEHE');
    //     return AdaptiveTextSelectionToolbar(
    //       anchors: editableTextState.contextMenuAnchors,
    //       children: editableTextState.contextMenuButtonItems.map((ContextMenuButtonItem buttonItem) {
    //         return CupertinoButton(
    //           borderRadius: null,
    //           color: const Color(0xffaaaa00),
    //           disabledColor: const Color(0xffaaaaff),
    //           onPressed: buttonItem.onPressed,
    //           padding: const EdgeInsets.all(10.0),
    //           pressedOpacity: 0.7,
    //           child: SizedBox(
    //             width: 200.0,
    //             child: Text(
    //               CupertinoTextSelectionToolbarButton.getButtonLabel(context, buttonItem),
    //             ),
    //           ),
    //         );
    //       }).toList(),
    //     );
    //   },
    // );

    /// Optionally you can use form to validate the Pinput
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Directionality(
            // Specify direction if desired
            textDirection: TextDirection.ltr,
            child: Pinput(
              controller: pinController,
              focusNode: focusNode,
              androidSmsAutofillMethod:
                  AndroidSmsAutofillMethod.smsUserConsentApi,
              listenForMultipleSmsOnAndroid: true,
              defaultPinTheme: defaultPinTheme,
              validator: (value) {
                return value == '2222' ? null : 'Pin is incorrect';
              },
              // onClipboardFound: (value) {
              //   debugPrint('onClipboardFound: $value');
              //   pinController.setText(value);
              // },
              hapticFeedbackType: HapticFeedbackType.lightImpact,
              onCompleted: (pin) {
                debugPrint('onCompleted: $pin');
              },
              onChanged: (value) {
                debugPrint('onChanged: $value');
              },
              cursor: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 9),
                    width: 22,
                    height: 1,
                    color: focusedBorderColor,
                  ),
                ],
              ),
              focusedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: focusedBorderColor),
                ),
              ),
              submittedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  color: fillColor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: focusedBorderColor),
                ),
              ),
              errorPinTheme: defaultPinTheme.copyBorderWith(
                border: Border.all(color: Colors.black54),
              ),
            ),
          ),
          // TextButton(
          //   onPressed: () {
          //     focusNode.unfocus();
          //     formKey.currentState!.validate();
          //   },
          //   child: const Text('Validate'),
          // ),
        ],
      ),
    );
  }
}
