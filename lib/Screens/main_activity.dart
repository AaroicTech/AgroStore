import 'package:agro_store/Screens/Bottom_nav_pages/History/history.dart';
import 'package:agro_store/Screens/Bottom_nav_pages/Home_screen/home_screen.dart';
import 'package:agro_store/Stlyes/colors.dart';
import 'package:agro_store/Widget/appbar.dart';
import 'package:agro_store/Widget/drawer.dart';
import 'package:flutter/services.dart';
import '/Screens/Bottom_nav_pages/Profile/profile.dart';
import 'package:flutter/material.dart';
import 'Bottom_nav_pages/Messages/messages.dart';

class MainActivity extends StatefulWidget {
  MainActivity({Key? key}) : super(key: key);
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  final List<Widget> _pages = [
    HomePage(),
    HistoryPage(),
    Messages(),
    ProfilePage(),
  ];

  int _selectedPage = 0;

  GlobalKey<ScaffoldState> key = GlobalKey();

  void showDrawer() {
    key.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      drawer: const MainDrawer(),
      appBar: appBar(onTap: () {
        showDrawer();
      }),
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
            icon: Icon(
              Icons.history,
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger),
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
