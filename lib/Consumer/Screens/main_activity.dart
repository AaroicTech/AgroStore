import 'package:agro_store/Consumer/Screens/Bottom_nav_pages/History/history.dart';
import 'package:agro_store/Consumer/Screens/Bottom_nav_pages/Profile/profile.dart';
import 'package:agro_store/Stlyes/colors.dart';
import 'package:agro_store/Stlyes/fonts.dart';
import 'package:agro_store/Widget/drawer.dart';
import 'package:flutter/material.dart';
import 'Bottom_nav_pages/Home_screen/home_screen.dart';
import 'Bottom_nav_pages/Messages/messages.dart';

class MainActivity extends StatefulWidget {
  MainActivity({Key? key}) : super(key: key);
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  final List<Widget> _pages = [
    HomePage(),
    HistoryPage('main'),
    Messages('main'),
    ProfilePage(),
  ];

  int _selectedPage = 0;

  GlobalKey<ScaffoldState> key = GlobalKey();

  void showDrawer() {
    key.currentState!.openDrawer();
  }

  List<String> titles = [
    'Home',
    'History',
    'Messages',
    'Profile',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      drawer: const MainDrawer(),
      appBar: AppBar(
        leading: IconButton(
          onPressed: showDrawer,
          icon: Icon(
            Icons.menu,
            color: primaryColor,
          ),
        ),
        centerTitle: _selectedPage == 0 ? false : true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: _selectedPage == 0
            ? Container(
                width: 100,
                child: Image.asset('assets/agro_store.png'),
              )
            : Text(
                titles[_selectedPage],
                style: textStyle,
              ),
        actions: _selectedPage == 3
            ? []
            : [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedPage = 3;
                    });
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/unsplash_i2hoD-C2RUA.png'),
                    ),
                  ),
                ),
              ],
      ),
      // appBar(onTap: () {
      //   showDrawer();
      // }
      // ),
      body: _pages[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _selectedPage = value;
          });
          // print(value);
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
