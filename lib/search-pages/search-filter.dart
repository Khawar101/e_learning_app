// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:intl/intl.dart';
import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';

class SearchFilter extends StatefulWidget {
  const SearchFilter({super.key});

  @override
  State<SearchFilter> createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  SfRangeValues _values = const SfRangeValues(20.0, 60.0);
  List<String> tags = [];
  List<String> options = [
    '3-8 Hours',
    '8-14 Hours',
    '14-20 Hours',
    '20-24 Hours',
    '24-30 Hours',
  ];
  List<String> tags1 = [];
  List<String> options1 = [
    'Design',
    'Painting',
    'Coding',
    'Music',
    'Visual identity',
    'Mathematics',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe5f1f8),
      body: Padding(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.35),
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xff3787ff),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.04,
                  horizontal: MediaQuery.of(context).size.width * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/icons/multiply-48.png', width: 26),
                      Expanded(
                        child: Center(
                          child: Text(
                            "Search Filter",
                            style: GoogleFonts.ibmPlexSans(
                                fontSize: 27,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Text(
                    "Categories",
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  ChipsChoice<String>.multiple(
                    value: tags1,
                    onChanged: (val) => setState(() => tags1 = val),
                    choiceItems: C2Choice.listFrom<String, String>(
                      source: options1,
                      value: (i, v) => v,
                      label: (i, v) => v,
                    ),
                    choiceActiveStyle: const C2ChoiceStyle(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    choiceStyle: const C2ChoiceStyle(
                      showCheckmark: false,
                      color: Colors.black,
                      backgroundColor: Colors.white,
                      //  borderColor: Color.fromARGB(255, 36, 25, 187),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    wrapped: true,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.045),
                  Text(
                    "Price",
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  SfRangeSlider(
                    min: 0.0,
                    max: 100.0,
                    values: _values,
                    interval: 20,
                    showTicks: false,
                    showLabels: true,
                    //   enableTooltip: true,
                    numberFormat: NumberFormat("\$"),
                    activeColor: Colors.black,
                    inactiveColor: Colors.white,
                    // minorTicksPerInterval: 500,
                    //labelPlacement: LabelPlacement.values,
                    onChanged: (SfRangeValues values) {
                      setState(() {
                        _values = values;
                      });
                    },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.045),
                  Text(
                    "Duration",
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  ChipsChoice<String>.multiple(
                    value: tags,
                    onChanged: (val) => setState(() => tags = val),
                    choiceItems: C2Choice.listFrom<String, String>(
                      source: options,
                      value: (i, v) => v,
                      label: (i, v) => v,
                    ),
                    choiceActiveStyle: const C2ChoiceStyle(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    choiceStyle: const C2ChoiceStyle(
                      showCheckmark: false,
                      color: Colors.black,
                      backgroundColor: Colors.white,
                      //  borderColor: Color.fromARGB(255, 36, 25, 187),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    wrapped: true,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.07,
                              vertical:
                                  MediaQuery.of(context).size.height * 0.02),
                          child: Text(
                            "Clear",
                            style: GoogleFonts.ibmPlexSans(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.19,
                              vertical:
                                  MediaQuery.of(context).size.height * 0.02),
                          child: Text(
                            "Apply Filter",
                            style: GoogleFonts.ibmPlexSans(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
