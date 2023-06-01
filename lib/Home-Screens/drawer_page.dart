import 'package:e_learning_app/Acount_screen.dart';
import 'package:e_learning_app/Home-Screens/contact_page.dart';
import 'package:e_learning_app/Home-Screens/home_buttom_bar.dart';
import 'package:e_learning_app/Home-Screens/setting_screen.dart';
import 'package:e_learning_app/courses/courses_list.dart';
import 'package:e_learning_app/search-book-pages/e_book_search.dart';
import 'package:e_learning_app/e-learning-page/e_learning.dart';
import 'package:e_learning_app/teacher-detail.dart/popular_teachers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerHeaderPage extends StatelessWidget {
  const DrawerHeaderPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
      ),
      width: MediaQuery.of(context).size.width * 0.55,
      backgroundColor: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.24,
            child: DrawerHeader(
              decoration: BoxDecoration(
                  color: const Color(0xff4873a6).withOpacity(0.7),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            AssetImage('assets/images/download (1).jpeg'),
                      ),
                      const SizedBox(width: 8),
                      Column(
                        //  mainAxisAlignment:
                        //      MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rakibull hassan',
                            style: GoogleFonts.ibmPlexSans(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Student',
                            style: GoogleFonts.ibmPlexSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const Spacer(),
                  // const Divider(
                  //   color: Colors.black,
                  // )
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.home_outlined,
                      color: const Color(0xff4873a6).withOpacity(0.7),
                    ),
                    title: const Text('Home'),
                    minLeadingWidth: 0.009,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeButtomBar()));
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      // Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.account_box,
                      color: const Color(0xff4873a6).withOpacity(0.7),
                    ),
                    title: const Text('Account'),
                    minLeadingWidth: 0.009,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const AcountScreen())));
                    },
                  ),
                   ListTile(
                    leading: Icon(
                      Icons.contacts_outlined,
                      color: const Color(0xff4873a6).withOpacity(0.7),
                    ),
                    title: const Text('Contacts'),
                    minLeadingWidth: 0.009,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const ContactPageScreen())));
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.groups_2_outlined,
                      color: const Color(0xff4873a6).withOpacity(0.7),
                    ),
                    title: const Text('Teachers'),
                    minLeadingWidth: 0.009,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const PopularTeacher())));
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.book_outlined,
                      color: const Color(0xff4873a6).withOpacity(0.7),
                    ),
                    title: const Text('Courses'),
                    minLeadingWidth: 0.009,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const ListOfCourses())));
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.menu_book,
                      color: const Color(0xff4873a6).withOpacity(0.7),
                    ),
                    title: const Text('E-Book'),
                    minLeadingWidth: 0.009,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const EbookScreen())));
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.keyboard_command_key_rounded,
                      color: const Color(0xff4873a6).withOpacity(0.7),
                    ),
                    title: const Text('E-Learning'),
                    minLeadingWidth: 0.009,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const ELearningPage())));
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.settings_outlined,
                      color: const Color(0xff4873a6).withOpacity(0.7),
                    ),
                    title: const Text('Settings'),
                    minLeadingWidth: 0.009,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const SettingScreen())));
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: const Color(0xff4873a6).withOpacity(0.7),
                    ),
                    title: const Text('Logout'),
                    minLeadingWidth: 0.009,
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// Icon(Icons.play_for_work_rounded),