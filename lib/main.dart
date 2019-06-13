import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';
import 'demo/drawer.dart';
import 'demo/bottom_navigation_bar.dart';
import 'demo/basic.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigration',
            onPressed: () => debugPrint('Search button is pressed'),
          ),
          title: Text('🇨🇳 UI中国 🇨🇳'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('Search button is pressed'),
            )
          ],
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_activity)),
              Tab(icon: Icon(Icons.local_airport)),
              Tab(icon: Icon(Icons.local_bar)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            Basic(),
            Icon(Icons.local_convenience_store,
                size: 128.0, color: Colors.black12)
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigation(),
      ),
    );
  }
}
