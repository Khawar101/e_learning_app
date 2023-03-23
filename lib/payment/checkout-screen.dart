// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  bool checkBoxValue = false;
  bool checkBoxValue1 = false;
  bool checkBoxValue2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe5f1f8),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.04,
            vertical: MediaQuery.of(context).size.height * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/icons/left-arrow.png'),
                Text(
                  "Checkout",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.ibmPlexSans(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Image.asset('assets/icons/scan-24.png'),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Text(
              "Payment Method",
              textAlign: TextAlign.center,
              style: GoogleFonts.ibmPlexSans(
                  fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Container(
              // height: 500,
              // width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.blue),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                    vertical: MediaQuery.of(context).size.height * 0.03),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              focusColor: Colors.white,
                              checkColor: Colors.white,
                              activeColor: Colors.white,
                              shape: const CircleBorder(),
                              value: checkBoxValue,
                              onChanged: (bool? newValue) {
                                setState(() {
                                  checkBoxValue = newValue!;
                                });
                              },
                            ),
                            const SizedBox(width: 6),
                            Container(
                              height: 40,
                              width: 60,
                              decoration: BoxDecoration(
                                  //    color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/images/visa-card.png',
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ],
                        ),
                        Text(
                          "**** **** **** 1234",
                          style: GoogleFonts.ibmPlexSans(
                              color: Colors.white, fontSize: 18),
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              focusColor: Colors.white,
                              checkColor: Colors.white,
                              activeColor: Colors.white,
                              shape: const CircleBorder(),
                              value: checkBoxValue1,
                              onChanged: (bool? newValue) {
                                setState(() {
                                  checkBoxValue1 = newValue!;
                                });
                              },
                            ),
                            const SizedBox(width: 6),
                            Container(
                              height: 40,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/images/credit-card2.png',
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ],
                        ),
                        Text(
                          "**** **** **** 1234",
                          style: GoogleFonts.ibmPlexSans(
                              color: Colors.white, fontSize: 18),
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              focusColor: Colors.white,
                              checkColor: Colors.white,
                              activeColor: Colors.white,
                              shape: const CircleBorder(),
                              value: checkBoxValue2,
                              onChanged: (bool? newValue) {
                                setState(() {
                                  checkBoxValue2 = newValue!;
                                });
                              },
                            ),
                            const SizedBox(width: 6),
                            Container(
                              height: 40,
                              width: 60,
                              decoration: BoxDecoration(
                                  //   color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/images/blue-reds-card.png',
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ],
                        ),
                        Text(
                          "**** **** **** 1234",
                          style: GoogleFonts.ibmPlexSans(
                              color: Colors.white, fontSize: 18),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: GoogleFonts.ibmPlexSans(
                      color: Colors.white, fontSize: 18),
                ),
                Text(
                  "\$ 102",
                  style:
                      GoogleFonts.ibmPlexSans(color: Colors.blue, fontSize: 18),
                )
              ],
            ),
            const SizedBox(height: 20),
          
              Center(
                child: ElevatedButton(
                  child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.blue),
                  
                  child: Center(
                    child: Text(
                      "Next",
                      style: GoogleFonts.ibmPlexSans(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                  ),
                  ),



                  onPressed: () {
                    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (contaxt) {
                          return Container(
                            height: MediaQuery.of(context).size.height * 1,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40)
                              ),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: MediaQuery.of(context).size.height * 0.03,
                                horizontal: MediaQuery.of(context).size.width*0.065   
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Confirm and Pay",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                       Text(
                                        "Products 3",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      ),
                                    ],
                                  ),
                                 
                                   SizedBox(height: MediaQuery.of(context).size.height*0.02),
                                 ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/images/visa-card.png',
                                    fit: BoxFit.cover,
                                  )),
                                   SizedBox(height: MediaQuery.of(context).size.height*0.035),
                                   Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: GoogleFonts.ibmPlexSans(
                      color: Colors.black, fontSize: 16),
                ),
                Text(
                  "\$ 102",
                  style:
                      GoogleFonts.ibmPlexSans(color: Colors.blue, fontSize: 16),
                )
              ],
            ), 
            SizedBox(height: MediaQuery.of(context).size.height*0.035),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue, 
                borderRadius: BorderRadius.circular(30),
              ),
             child: Center(
               child: Text(
                    "Pay now",
                    style: GoogleFonts.ibmPlexSans(
                        color: Colors.white, fontSize: 16,fontWeight: FontWeight.w500),
                  ),
             ), 
            )
                            
                                  
                                ],
                              ),
                            ),
                          );
                        });
                  },
                ),
              ),
            










          ],
        ),
      )),
    );
  }
}
