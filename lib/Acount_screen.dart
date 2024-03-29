// ignore_for_file: file_names
import 'package:e_learning_app/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcountScreen extends StatefulWidget {
  const AcountScreen({super.key});
  @override
  State<AcountScreen> createState() => _AcountScreenState();
}

class _AcountScreenState extends State<AcountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xffe5f1f8),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
            size: 18,
          ),
        ),
        title: Text(
          "Acount",
          textAlign: TextAlign.center,
          style: GoogleFonts.ibmPlexSans(
              fontSize: 18,
              color: const Color(0xff4873a6).withOpacity(0.7),
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                //     width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF4873A6).withOpacity(0.7),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: CustomText(
                          text: 'General Setting',
                          size: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color(0xFF4873A6).withOpacity(0.7),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonText(
                        text: 'PIN',
                        color: const Color(0xFF4873A6).withOpacity(0.7),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                        color: const Color(0xFF4873A6).withOpacity(0.7),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Container(
                height: 40,
                //     width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF4873A6).withOpacity(0.7),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: CustomText(
                          text: 'Support',
                          size: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              bottom:
                                  MediaQuery.of(context).size.height * 0.015),
                          child: Container(
                            height: 40,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: const Color(0xFF4873A6).withOpacity(0.7),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ButtonText(
                                    text: index == 0
                                        ? 'Take A Tour'
                                        : index == 1
                                            ? 'Take A Tour of Home Screen'
                                            : index == 2
                                                ? 'My Account'
                                                : index == 3
                                                    ? 'Support'
                                                    : index == 4
                                                        ? 'About'
                                                        : index == 5
                                                            ? 'Terms of Use'
                                                            : index == 6
                                                                ? 'Privacy Policy'
                                                                : index == 7
                                                                    ? 'Linked Device'
                                                                    : index == 8
                                                                        ? 'Account Activity'
                                                                        : 'Log ',
                                    color: const Color(0xFF4873A6)
                                        .withOpacity(0.7),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 18,
                                    color: const Color(0xFF4873A6)
                                        .withOpacity(0.7),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
