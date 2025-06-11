import 'package:electrocar_app/screen/main_layout/tabs/Maintenance/Maintenance.dart';
import 'package:electrocar_app/screen/main_layout/tabs/Sales/sales.dart';
import 'package:electrocar_app/screen/main_layout/tabs/Settings/sittings.dart';
import 'package:electrocar_app/screen/main_layout/tabs/charging/charging.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int selectedIndex = 0;
  List<Widget> tabs = [charging(), Maintenance(), Sales(), const Settings()
  ];
  String userName = "Mohammed Ahmed ";
  String userStatus = "Connected";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 11, 45, 88),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome Back ✨',
              style: TextStyle(fontSize: 14.0),
            ),
            Text(
              userName,
              style: const TextStyle(color: Colors.white, fontSize: 16.0),
            ),
            Text(
              userStatus,
              style: const TextStyle(color: Colors.white, fontSize: 14.0),
            ),
          ],
        ),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 40, 92, 115),
            backgroundImage: AssetImage('assets/images/UserLogo.png'),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
      body: tabs[selectedIndex],
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.shifting,
      selectedItemColor: Colors.amber[800],
      unselectedItemColor: const Color.fromRGBO(116, 112, 116, 1),
      items: const [
        BottomNavigationBarItem(
          label: "Charging",
          icon: Icon(Icons.ev_station_outlined),
          activeIcon: Icon(Icons.ev_station),
          backgroundColor: Color.fromRGBO(255, 255, 255, 11),
        ),
        BottomNavigationBarItem(
          label: "Maintenance",
          icon: Icon(Icons.auto_fix_high_outlined),
          activeIcon: Icon(Icons.auto_fix_high),
          backgroundColor: Color.fromRGBO(255, 255, 255, 11),
        ),
        BottomNavigationBarItem(
          label: "Sales",
          icon: Icon(Icons.vpn_key_outlined),
          activeIcon: Icon(Icons.vpn_key),
          backgroundColor: Color.fromRGBO(255, 255, 255, 11),
        ),
        BottomNavigationBarItem(
          label: "Settings",
          icon: Icon(
            Icons.settings_outlined,
          ),
          activeIcon: Icon(Icons.settings),
          backgroundColor: Color.fromRGBO(255, 255, 255, 11),
        ),
      ],
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
