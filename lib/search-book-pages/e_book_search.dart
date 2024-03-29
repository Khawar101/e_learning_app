// ignore: file_names
import 'package:e_learning_app/notifications/notifications.dart';
import 'package:e_learning_app/search-book-pages/book_detail.dart';
import 'package:e_learning_app/utils/app_utils.dart';
import 'package:e_learning_app/utils/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EbookScreen extends StatefulWidget {
  const EbookScreen({super.key});

  @override
  State<EbookScreen> createState() => _EbookScreenState();
}

class _EbookScreenState extends State<EbookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            "E-Book",
            textAlign: TextAlign.center,
            style: GoogleFonts.ibmPlexSans(
                fontSize: 18,
                color: const Color(0xff4873a6).withOpacity(0.7),
                fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15, top: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const NotificationScreen())));
                },
                child: Stack(
                  children: [
                    const Icon(
                      Icons.notifications_none_outlined,
                      color: Colors.black45,
                      size: 26,
                    ),
                    Positioned(
                      top: 3,
                      left: 2.5,
                      child: CircleAvatar(
                        radius: 4.5,
                        backgroundColor:
                            const Color(0xff4873a6).withOpacity(0.7),
                      ),
                    )
                  ],
                ),
              ),
            )
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Text(
                "Explore, ebook! ",
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              CustomTextFormField(
                hintText: 'Search for new books!',
                suffix: const Icon(Icons.search),
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              const ButtonText(
                text: "Featured Books ",
                color: Colors.black,
              ),

              Container(
                height: 230.0,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const BookDetail())));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * 0.04,
                            top: MediaQuery.of(context).size.height * 0.01),
                        child: Container(
                          width: 160.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/images.jpg',
                                fit: BoxFit.fill,
                              )),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              const ButtonText(
                text: "Trending Books ",
                color: Colors.black,
              ),

              Container(
                height: 190.0,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const BookDetail())));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * 0.04,
                            top: MediaQuery.of(context).size.height * 0.01),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/images/ship-fever.jpg',
                                    fit: BoxFit.fill,
                                  )),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.009),
                            Text(
                              "Futurama ",
                              style: GoogleFonts.ibmPlexSans(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              "Nora M. Barrett",
                              style: GoogleFonts.ibmPlexSans(
                                  fontSize: 8,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
