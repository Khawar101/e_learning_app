import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool visibleCheck = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffe5f1f8),
        body: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/icons/icons8-multiply-32.png',
                        color: const Color(0xff211f1f),
                      ),
                      Text(
                        "Sign In",
                        style: GoogleFonts.ibmPlexSans(
                            fontSize: 14,
                            color: Colors.blue,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),

                Center(
                  child: Text("Join Brainly Community",
                      style: GoogleFonts.ibmPlexSans(
                        color: const Color(0xff211f1f),
                        fontSize: 24,
                      )),
                ),

                const SizedBox(height: 6),

                Text(
                  "Subscribe quickly with us",
                  style: GoogleFonts.ibmPlexSans(
                      color: const Color(0xff969799), fontSize: 17),
                ),
                const SizedBox(height: 30),
                // ignore: prefer_const_constructors
                Stack(
                  children: [
                    const Center(
                      child: CircleAvatar(
                        radius: 75,
                        backgroundImage:
                            AssetImage('assets/images/download.jpeg'),
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.transparent,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, top: 120),
                      child: Center(
                        child: Container(
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                            color: const Color(0xff5085fc),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Icon(Icons.edit_outlined,
                              color: Color(0xffffffff), size: 30),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 35),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 1,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          children: const [
                            SizedBox(
                              width: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: TextField(
                                //   obscureText: visibleCheck,
                                //  controller: username,
                                decoration: InputDecoration(
                                  hintText: "User Name",
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 18),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            SizedBox(width: 30),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: MediaQuery.of(context).size.width * 1,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          children: const [
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: TextField(
                                //  obscureText: visibleCheck,
                                //  controller: email,
                                decoration: InputDecoration(
                                  hintText: "E-Mail",
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 18),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: MediaQuery.of(context).size.width * 1,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: TextField(
                                obscureText: visibleCheck,
                                //  controller: password,
                                decoration: const InputDecoration(
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 18),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            GestureDetector(
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
                            const SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 35),
                      Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xff5085fc),
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Center(
                          child: Text("Sign up",
                              style: GoogleFonts.ibmPlexSans(
                                color: const Color(0xffd0e0fe),
                                fontSize: 18,
                              )),
                        ),
                      ),
                      const SizedBox(height: 30),
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
                      const SizedBox(height: 20),
                      Text(
                        "We never share anything on your behalf",
                        style: GoogleFonts.ibmPlexSans(
                          color: const Color(0xff9c9ea0),
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 27),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              color: const Color(0xff868686),
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: Image.asset('assets/icons/apple-logo.png'),
                          ),
                          Container(
                            padding: const EdgeInsets.all(20),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: Image.asset('assets/icons/google-logo.png'),
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: Center(
                                child: Image.asset(
                              'assets/icons/facebook-logo.png',
                            )),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
