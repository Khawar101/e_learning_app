// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScanCard extends StatefulWidget {
  const ScanCard({super.key});

  @override
  State<ScanCard> createState() => _ScanCardState();
}

class _ScanCardState extends State<ScanCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe5f1f8),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.76,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.06),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.08),
                    child: Row(
                      children: [
                        Image.asset('assets/icons/left-arrow.png',
                            color: Colors.white),
                        Expanded(
                          child: Center(
                            child: Text(
                              'Scan Card',
                              style: GoogleFonts.ibmPlexSans(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                  Image.asset('assets/images/credit-card2.png'),
                  const Spacer(),
                  const Divider(
                    color: Colors.white,
                    thickness: 5,
                    indent: 150,
                    endIndent: 150,
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          ElevatedButton(
              child: Container(
                height: 30,
                width: MediaQuery.of(context).size.width * 0.1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue),
                child: Center(
                  child: Text(
                    "Scan",
                    style: GoogleFonts.ibmPlexSans(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              onPressed: () {
                showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (contaxt) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)),
                          color: Color(0xffe5f1f8),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 50),
                            CircleAvatar(
                                radius: 24,
                                backgroundColor: Colors.blue,
                                child: Image.asset(
                                  'assets/icons/multiply-48.png',
                                  width: 25,
                                )),
                            const SizedBox(height: 8),
                            Text(
                              "Scan Failed",
                              style: GoogleFonts.ibmPlexSans(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "Your credit card scan failed\nplease try again!",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.ibmPlexSans(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                            const SizedBox(height: 50),
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.7,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Text(
                                  "Try Again",
                                  style: GoogleFonts.ibmPlexSans(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    });
              }),
          Center(
            child: ElevatedButton(
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue),
                  child: Center(
                    child: Text(
                      "Scan",
                      style: GoogleFonts.ibmPlexSans(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (contaxt) {
                        return Container(
                          height: MediaQuery.of(context).size.height * 0.5,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40)),
                            color: Color(0xffe5f1f8),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(height: 50),
                              const CircleAvatar(
                                radius: 24,
                                backgroundColor: Colors.blue,
                                child: Icon(
                                  Icons.done,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "Scan Success",
                                style: GoogleFonts.ibmPlexSans(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 22),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "Your credit card is successfully\nScanned",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.ibmPlexSans(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              const SizedBox(height: 50),
                              Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width * 0.7,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Center(
                                  child: Text(
                                    "Next",
                                    style: GoogleFonts.ibmPlexSans(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      });
                }),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
