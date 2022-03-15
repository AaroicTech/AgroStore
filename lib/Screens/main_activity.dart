import 'package:agro_store/Screens/Bottom_nav_pages/Home_screen/history.dart';
import 'package:agro_store/Screens/Bottom_nav_pages/Home_screen/home_screen.dart';
import 'package:agro_store/Stlyes/colors.dart';
import '/Screens/Bottom_nav_pages/Profile/profile.dart';
import 'package:flutter/material.dart';
import 'Bottom_nav_pages/Home_screen/messages.dart';

class MainActivity extends StatefulWidget {
  MainActivity({Key? key}) : super(key: key);
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  final List<Widget> _pages = [
    HomePage(),
    HistroryPage(),
    Messages(),
    ProfilePage(),
  ];

  int _selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        automaticallyImplyLeading: false,
        actions: [
        
          Image.asset('assets/agro_store.png'),
          const CircleAvatar(
            backgroundImage: AssetImage('assets/unsplash_i2hoD-C2RUA.png'),
          ),
        ],
      ),
      body: _pages[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _selectedPage = value;
          });
          print(value);
        },
        iconSize: 16,
        selectedFontSize: 15,
        currentIndex: _selectedPage,
        unselectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: primaryColor,
        unselectedItemColor: black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            // backgroundColor: red,
            icon: Icon(
              Icons.group,
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_sharp),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}