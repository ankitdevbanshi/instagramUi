
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/account.dart';
import 'package:instagram_ui/pages/reels.dart';
import 'package:instagram_ui/pages/search.dart';
import 'package:instagram_ui/pages/shop.dart';
import 'package:instagram_ui/pages/home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
   UserReels(),
    UserShop(),
    UserAccount()
  ];
  void _navigateBottomNavbar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: _navigateBottomNavbar,
          currentIndex: _selectedIndex,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.video_call),label: "Reels"),
        BottomNavigationBarItem(icon: Icon(Icons.shop),label: "Shop"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Account"),
      ]),
    );
  }
}
