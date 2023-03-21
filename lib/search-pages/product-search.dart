// ignore: file_names
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class ProductSearch extends StatefulWidget {
  const ProductSearch({super.key});

  @override
  State<ProductSearch> createState() => _ProductSearchState();
}

class _ProductSearchState extends State<ProductSearch> {
  // List<String> countries = ["Brazil", "Nepal", "India", "China", "USA", "Canada"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe5f1f8),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.04,
              vertical: MediaQuery.of(context).size.height * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.arrow_back_ios,
                size: 22,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              SizedBox(
                height: 45,
                child: TextFormField(
                  // minLines: 6,
                  // maxLines: null,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: const Color(0xffffffff),
                    alignLabelWithHint: true,
                    hintText: 'Product Design',
                    hintStyle: GoogleFonts.ibmPlexSans(fontSize: 12),
                    prefixIcon: const Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(
                        Icons.search_rounded,
                        size: 18,
                      ),
                    ),
                    suffixIcon: Container(
                      width: 100,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              print('add button pressed');
                            },
                            icon: const Icon(Icons.highlight_off),
                          ),
                          IconButton(
                            onPressed: () {
                              print('mic button pressed');
                            },
                            icon: Image.asset(
                              'assets/icons/slider.png',
                              width: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.025),
              Container(
                //  margin: EdgeInsets.symmetric(horizontal: 10),
                height: 30,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.04,
                          top: MediaQuery.of(context).size.height * 0.00),
                      child: Container(
                        //   width: 130.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color(0xffffffff)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.03),
                          child: Center(
                              child: Text(
                            'Visual identity',
                            style: GoogleFonts.ibmPlexSans(fontSize: 10),
                          )),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Expanded(
                child: ListView.builder(
                    //    shrinkWrap: true,
                    itemCount: 8,
                    // physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            vertical:
                                MediaQuery.of(context).size.height * 0.015),
                        child: Container(
                          //    height: 70,
                          decoration: BoxDecoration(
                              color: const Color(0xff3787ff),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.03,
                                vertical:
                                    MediaQuery.of(context).size.height * 0.018),
                            child: Row(
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.09),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Product Design v1.0",
                                      style: GoogleFonts.ibmPlexSans(
                                          color: const Color(0xffffffff)),
                                    ),
                                    SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.005),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Icon(
                                          Icons.person,
                                          color: Colors.white,
                                          size: 18,
                                        ),
                                        SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.01),
                                        Text(
                                          "Robertson Connie",
                                          style: GoogleFonts.ibmPlexSans(
                                              fontSize: 10,
                                              color: const Color(0xffffffff)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.003),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.02,
                                              vertical: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.004),
                                          child: Text(
                                            "\$190",
                                            style: GoogleFonts.ibmPlexSans(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal:
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        0.02,
                                                vertical: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.004),
                                            child: Text(
                                              "16 hours",
                                              style: GoogleFonts.ibmPlexSans(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
