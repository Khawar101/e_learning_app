import 'package:e_learning_app/Home-Screens/drawer_page.dart';
import 'package:e_learning_app/utils/app_utils.dart';
import 'package:e_learning_app/utils/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactPageScreen extends StatefulWidget {
  const ContactPageScreen({super.key});

  @override
  State<ContactPageScreen> createState() => _ContactPageScreenState();
}

class _ContactPageScreenState extends State<ContactPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerHeaderPage(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
       leading: Builder(
    builder: (BuildContext context) {
      return IconButton(
        icon: const  Icon(
               Icons.vertical_distribute_sharp,
               color: Colors.black54,
               size: 18,
             ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      );
    },
  ),
        title: Text(
          "Contacts",
          textAlign: TextAlign.center,
          style: GoogleFonts.ibmPlexSans(
              fontSize: 18,
              color: const Color(0xff4873a6).withOpacity(0.7),
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            CustomTextFormField(
              hintText: 'Search',
            ),
            const SizedBox(height: 14),
            const ButtonText(text: 'All Contacts', color: Colors.black),
            const SizedBox(height: 14),
            Expanded(
              child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: Colors.red,
                            backgroundImage:
                                AssetImage('assets/images/tree.jpg'),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                  text: 'Contact Name',
                                  size: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                              SizedBox(height: 3),
                              CustomText(
                                  text: '(+92)3012345678',
                                  size: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54)
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
