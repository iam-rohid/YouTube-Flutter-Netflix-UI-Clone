import 'package:flutter/material.dart';
import 'package:netflix_clone/views/home_view.dart';

class Tabbar extends StatefulWidget {
  @override
  _TabbarState createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 10,
        unselectedFontSize: 10,
        onTap: (int index) {
          setState(() {
            this._selectedTab = index;
          });
        },
        currentIndex: _selectedTab,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection),
            label: "Comming Soon",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download_rounded),
            label: "Downloads",
          ),
        ],
      ),
      body: Stack(
        children: [
          Visibility(
            child: HomeView(),
            visible: _selectedTab == 0,
          ),
          Visibility(
            child: Center(
              child: Text("Comming Soon View"),
            ),
            visible: _selectedTab == 1,
          ),
          Visibility(
            child: Center(
              child: Text("Search View"),
            ),
            visible: _selectedTab == 2,
          ),
          Visibility(
            child: Center(
              child: Text("Downloads View"),
            ),
            visible: _selectedTab == 3,
          ),
        ],
      ),
    );
  }
}
