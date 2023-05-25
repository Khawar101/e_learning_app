// ignore: file_names
import 'package:chips_choice/chips_choice.dart';
import 'package:e_learning_app/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

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
    'Science',
  ];

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      child: Scaffold(
        backgroundColor: const Color(0xff4873a6).withOpacity(0.7),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xff4873a6).withOpacity(0.7),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.02,
                  horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset('assets/icons/multiply-48.png',
                              width: 16)),
                      const Expanded(
                        child: Center(
                            child: CustomText(
                                text: 'Search Filter',
                                size: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  const ButtonText(text: "Categories", color: Colors.white),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  ChipsChoice<String>.multiple(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    value: tags1,
                    // placeholderStyle: TextStyle(fontSize: 4,color: Colors.red),

                    padding: const EdgeInsets.all(0),
                    onChanged: (val) => setState(() => tags1 = val),
                    choiceItems: C2Choice.listFrom<String, String>(
                      source: options1,
                      value: (i, v) => v,
                      label: (i, v) => v,
                    ),
                    choiceStyle: const C2ChipStyle(
                      foregroundStyle: TextStyle(fontSize: 10),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.white,
                      overlayColor: Colors.white,
                      borderColor: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    wrapped: true,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                  const ButtonText(text: "Price", color: Colors.white),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.0),
                  SfRangeSlider(
                    min: 0.0,
                    max: 100.0,
                    values: _values,

                    dividerShape: const SfDividerShape(),
                    interval: 20,

                    showTicks: false,
                    showLabels: true,
                    //   enableTooltip: true,
                    numberFormat: NumberFormat("\$"),
                    activeColor: Colors.white,
                    inactiveColor: Colors.black54,

                    // minorTicksPerInterval: 500,
                    //labelPlacement: LabelPlacement.values,
                    onChanged: (SfRangeValues values) {
                      setState(() {
                        _values = values;
                      });
                    },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                  const ButtonText(text: "Duration", color: Colors.white),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  ChipsChoice<String>.multiple(
                    value: tags,
                    padding: const EdgeInsets.all(0),
                    onChanged: (val) => setState(() => tags = val),
                    choiceItems: C2Choice.listFrom<String, String>(
                      source: options,
                      value: (i, v) => v,
                      label: (i, v) => v,
                    ),
                    choiceStyle: const C2ChipStyle(
                      foregroundStyle: TextStyle(fontSize: 10),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.white,
                      overlayColor: Colors.white,
                      borderColor: Colors.white,
                      // iconColor: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    wrapped: true,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: ButtonText(
                              text: "Clear",
                              color: const Color(0xff4873a6).withOpacity(0.7),
                            ),
                          )),
                      Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: ButtonText(
                              text: "Apply Filter",
                              color: const Color(0xff4873a6).withOpacity(0.7),
                            ),
                          )),
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
