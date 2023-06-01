// ignore: file_names
import 'package:e_learning_app/Home-Screens/home_buttom_bar.dart';
import 'package:e_learning_app/forget_password/forgot_password_screen.dart';
import 'package:e_learning_app/sign_up_screen/sign_up_screen.dart';
import 'package:e_learning_app/utils/app_utils.dart';
import 'package:e_learning_app/utils/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:local_auth/local_auth.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool visibleCheck = true;

  // final LocalAuthentication auth = LocalAuthentication();
  // _SupportState _supportState = _SupportState.unknown;
  // bool? _canCheckBiometrics;
  // List<BiometricType>? _availableBiometrics;
  // String _authorized = 'Not Authorized';
  // bool _isAuthenticating = false;

  // @override
  // void initState() {
  //   super.initState();
  //   auth.isDeviceSupported().then(
  //         (bool isSupported) => setState(() => _supportState = isSupported
  //             ? _SupportState.supported
  //             : _SupportState.unsupported),
  //       );
  // }

  // Future<void> _checkBiometrics() async {
  //   late bool canCheckBiometrics;
  //   try {
  //     canCheckBiometrics = await auth.canCheckBiometrics;
  //   } on PlatformException catch (e) {
  //     canCheckBiometrics = false;
  //     print(e);
  //   }
  //   if (!mounted) {
  //     return;
  //   }

  //   setState(() {
  //     _canCheckBiometrics = canCheckBiometrics;
  //   });
  // }

  // Future<void> _getAvailableBiometrics() async {
  //   late List<BiometricType> availableBiometrics;
  //   try {
  //     availableBiometrics = await auth.getAvailableBiometrics();
  //   } on PlatformException catch (e) {
  //     availableBiometrics = <BiometricType>[];
  //     print(e);
  //   }
  //   if (!mounted) {
  //     return;
  //   }

  //   setState(() {
  //     _availableBiometrics = availableBiometrics;
  //   });
  // }

  // Future<void> _authenticate() async {
  //   bool authenticated = false;
  //   try {
  //     setState(() {
  //       _isAuthenticating = true;
  //       _authorized = 'Authenticating';
  //     });
  //     authenticated = await auth.authenticate(
  //       localizedReason: 'Let OS determine authentication method',
  //       options: const AuthenticationOptions(
  //         stickyAuth: true,
  //       ),
  //     );
  //     setState(() {
  //       _isAuthenticating = false;
  //     });
  //   } on PlatformException catch (e) {
  //     print(e);
  //     setState(() {
  //       _isAuthenticating = false;
  //       _authorized = 'Error - ${e.message}';
  //     });
  //     return;
  //   }
  //   if (!mounted) {
  //     return;
  //   }

  //   setState(
  //       () => _authorized = authenticated ? 'Authorized' : 'Not Authorized');
  // }

  // Future<void> _authenticateWithBiometrics() async {
  //   bool authenticated = false;
  //   try {
  //     setState(() {
  //       _isAuthenticating = true;
  //       _authorized = 'Authenticating';
  //     });
  //     authenticated = await auth.authenticate(
  //       localizedReason:
  //           'Scan your fingerprint (or face or whatever) to authenticate',
  //       options: const AuthenticationOptions(
  //         stickyAuth: true,
  //         biometricOnly: true,
  //       ),
  //     );
  //     setState(() {
  //       _isAuthenticating = false;
  //       _authorized = 'Authenticating';
  //     });
  //   } on PlatformException catch (e) {
  //     print(e);
  //     setState(() {
  //       _isAuthenticating = false;
  //       _authorized = 'Error - ${e.message}';
  //     });
  //     return;
  //   }
  //   if (!mounted) {
  //     return;
  //   }

  //   final String message = authenticated ? 'Authorized' : 'Not Authorized';
  //   setState(() {
  //     _authorized = message;
  //   });
  // }

  // Future<void> _cancelAuthentication() async {
  //   await auth.stopAuthentication();
  //   setState(() => _isAuthenticating = false);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  backgroundColor: const Color(0xffe4f1f8),
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
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(color: const Color(0xff4873a6).withOpacity(0.7), width: 1),
                  ),
                  child:  Icon(
                    Icons.lock,
                    color: const Color(0xff4873a6).withOpacity(0.7),
                    size: 34,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              const BigText(
                text: 'Welcome Back!',
                color: Colors.black,
              ),
              const SizedBox(height: 6),
              const BigSubText(
                text: 'A handful of model sentence structures',
              ),
              const SizedBox(height: 25),
              CustomTextFormField(
                hintText: 'Email id',
                prefix: const Icon(
                  Icons.mail_outlined,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.65,
                    //    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: CustomTextFormField(
                      hintText: 'Password',
                      isObscureText: visibleCheck,
                      prefix: GestureDetector(
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
                  ),
                  Container(
                    //  height: 50,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: const Color(0xff4873a6).withOpacity(0.7),),
                        borderRadius: BorderRadius.circular(10)),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.white, //background color of button
                        side: BorderSide.none, //border width and color
                        elevation: 0, //elevation of button
                        shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () {}, //_authenticateWithBiometrics,
                      child: const Icon(
                        Icons.fingerprint,
                        size: 32,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) =>
                              const ForgotPasswordScreen())));
                },
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'Forgot Password?',
                    style: GoogleFonts.ibmPlexSans(
                        decoration: TextDecoration.underline,
                        color: const Color(0xff4873a6).withOpacity(0.7),),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder:(BuildContext context)  => const HomeButtomBar()),    ModalRoute.withName('/'),);
                      },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff4873a6).withOpacity(0.7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                      child: ButtonText(
                    text: 'Sign in',
                    color: Colors.white,
                  )),
                ),
              ),
              const SizedBox(height: 15),
              Row(children: [
                const Expanded(
                    child: Divider(
                  indent: 10,
                  endIndent: 10,
                  thickness: 2,
                )),
                Text(
                  "OR",
                  style: GoogleFonts.ibmPlexSans(fontSize: 12),
                ),
                const Expanded(
                    child: Divider(
                  indent: 10,
                  endIndent: 10,
                  thickness: 2,
                )),
              ]),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/google-48.png',
                    width: 20,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Sign in with Google',
                    style: GoogleFonts.ibmPlexSans(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SmallText(
                      text: 'Dont have an account? ', color: Colors.black),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  const SignUpPhoneScreen())));
                    },
                    child:  SmallText(
                        text: 'Sign up', color: const Color(0xff4873a6).withOpacity(0.7),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// enum _SupportState {
//   unknown,
//   supported,
//   unsupported,
// }