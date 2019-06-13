import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<BottomNavigation> {
  int currentindex = 0;

  void onTapHandler(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentindex,
      onTap: onTapHandler,
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          title: Text('Explore'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          title: Text('History'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          title: Text('List'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('Me'),
        ),
      ],
    );
  }
}
