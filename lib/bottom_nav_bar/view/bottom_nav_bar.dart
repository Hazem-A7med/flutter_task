import 'package:flutter/material.dart';
import 'package:flutter_task/home/view/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  List<String>appBarTitle=[
    'Home','Assets','Support','Profile'
  ];

  static  List<Widget> widgetOptions = <Widget>[
    const HomeScreen(),
    const Center(
      child: Text(
        'Assets',
      ),
    ),
    const Center(
      child: Text(
        'Support',
      ),
    ),
    const Center(
      child: Text(
        'Profile',
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      appBar: AppBar(
        title:  Text(
          appBarTitle[currentIndex],
        ),
        centerTitle: true,
      ),
      body: widgetOptions.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/nav_bar/home.png',
              width: 20,
              color:
                  (currentIndex == 0) ? const Color(0xffD61116) : Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/nav_bar/dashboard_customize.png',
              width: 20,
              color:
                  (currentIndex == 1) ? const Color(0xffD61116) : Colors.grey,
            ),
            label: 'Assets',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/nav_bar/support_agent.png',
              width: 20,
              color:
                  (currentIndex == 2) ? const Color(0xffD61116) : Colors.grey,
            ),
            label: 'Support',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/nav_bar/person.png',
              width: 20,
              color:
                  (currentIndex == 3) ? const Color(0xffD61116) : Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: currentIndex,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedItemColor: const Color(0xffD61116),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
