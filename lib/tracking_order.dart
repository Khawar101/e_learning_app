// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class TrackingOrder extends StatefulWidget {
  const TrackingOrder({super.key});

  @override
  State<TrackingOrder> createState() => _TrackingOrderState();
}

class _TrackingOrderState extends State<TrackingOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.045,
              vertical: MediaQuery.of(context).size.height * 0.03),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/icons/left-arrow.png'),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Tracking Order",
                            style: GoogleFonts.ibmPlexSans(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff3787ff),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.04,
                        vertical: MediaQuery.of(context).size.height * 0.03),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Estimated Delivery time",
                          style: GoogleFonts.ibmPlexSans(
                              fontSize: 22, color: Colors.white),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "4-6 Days",
                          style: GoogleFonts.ibmPlexSans(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.02,
                                vertical:
                                    MediaQuery.of(context).size.height * 0.01),
                            child: Wrap(
                              children: [
                                const Icon(Icons.alarm, size: 16),
                                const SizedBox(width: 10),
                                Text(
                                  "Sat 11- Tue 14 March",
                                  style: GoogleFonts.ibmPlexSans(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    Text(
                      "Where is my order",
                      style: GoogleFonts.ibmPlexSans(
                          fontSize: 26,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 22),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/icons/truck-icon1.png',
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          "On the way",
                          style: GoogleFonts.ibmPlexSans(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 120),
                      child: StepProgressIndicator(
                        totalSteps: 8,
                        fallbackLength: 50,
                        size: 1,
                        direction: Axis.vertical,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(131, 233, 30, 98),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/icons/box.png',
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          "Dispached",
                          style: GoogleFonts.ibmPlexSans(
                              fontSize: 22,
                              color: const Color.fromARGB(137, 0, 0, 0),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 120),
                      child: StepProgressIndicator(
                        totalSteps: 8,
                        fallbackLength: 50,
                        size: 1,
                        direction: Axis.vertical,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/icons/box.png',
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          "Order Placed\n successfully",
                          style: GoogleFonts.ibmPlexSans(
                              fontSize: 18,
                              color: const Color.fromARGB(137, 0, 0, 0),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                    Container(
                      height: 65,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color(0xff3787ff),
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          "Back to Home",
                          style: GoogleFonts.ibmPlexSans(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
