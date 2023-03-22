// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      backgroundColor: const Color(0xffe5f1f8),
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.2),
          Center(
              child: Lottie.asset('assets/lottie/lottie_success.json',
                  width: 130, height: 130)),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          Text(
            "Successful purchase!",
            style: GoogleFonts.ibmPlexSans(
                fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.7,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: Text(
                "Start learning",
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
