
import 'package:e_learning_app/Home-Screens/chat_page.dart';
import 'package:e_learning_app/Home-Screens/contact_page.dart';
import 'package:e_learning_app/Home-Screens/home-screeen1.dart';
import 'package:e_learning_app/student-profile-setting/student-profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'profile-information-screen1.dart';

class HomeButtomBar extends StatefulWidget {
  const HomeButtomBar({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeButtomBarState createState() => _HomeButtomBarState();
}

class _HomeButtomBarState extends State<HomeButtomBar> {
  



  List<Widget> views = [
    const HomeScreen1(),
    const ContactPageScreen(),
    const ChatPageScreen(),
    const StudentProfile(),
    const ProfileScreen(),
    
   
  ];

  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  EdgeInsets padding = const EdgeInsets.all(12);

  int _selectedItemPosition = 0;
  SnakeShape snakeShape = SnakeShape.indicator;

  bool showSelectedLabels = false;
  bool showUnselectedLabels = false;

  Color selectedColor =  const Color(0xFF4873A6).withOpacity(0.7);
  Color unselectedColor = Colors.blueGrey;

  Gradient selectedGradient =
      const LinearGradient(colors: [Colors.red, Colors.amber]);
  Gradient unselectedGradient =
      const LinearGradient(colors: [Colors.red, Colors.blueGrey]);

  Color? containerColor;
  List<Color> containerColors = [
    const Color(0xFFFDE1D7),
    const Color(0xFFE4EDF5),
    const Color(0xFFE7EEED),
    const Color(0xFFF4E4CE),
    const Color(0xFFF4E4CE),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views[_selectedItemPosition],
      bottomNavigationBar: SnakeNavigationBar.color(
        shadowColor:  const Color(0xFF4873A6).withOpacity(0.7),
        height: 40,
        behaviour: snakeBarStyle,
        snakeShape: snakeShape,
        shape: bottomBarShape,
        padding: padding,
       
        ///configuration for SnakeNavigationBar.color
        snakeViewColor: selectedColor,
        selectedItemColor:
            snakeShape == SnakeShape.indicator ? selectedColor : null,
        unselectedItemColor: unselectedColor,

        ///configuration for SnakeNavigationBar.gradient
        // snakeViewGradient: selectedGradient,
        // selectedItemGradient: snakeShape == SnakeShape.indicator ? selectedGradient : null,
        // unselectedItemGradient: unselectedGradient,

        showUnselectedLabels: showUnselectedLabels,
        showSelectedLabels: showSelectedLabels,

        currentIndex: _selectedItemPosition,
        onTap: (index) => setState(() => _selectedItemPosition = index),
        items: const [
          
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.contacts_outlined,size: 20,), label: 'Contacts'),
          BottomNavigationBarItem(icon: Icon(Icons.chat_outlined,size: 20,), label: 'Chat'),
            BottomNavigationBarItem(icon: Icon(Icons.groups_2_outlined,size: 30,), label: 'Student'),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: 'Person')
        ],
        selectedLabelStyle: const TextStyle(fontSize: 10),
        unselectedLabelStyle: const TextStyle(fontSize: 10),
      ),
      
    );
  }
}