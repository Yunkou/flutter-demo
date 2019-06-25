import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';
import 'demo/drawer.dart';
import 'demo/bottom_navigation_bar.dart';
import 'demo/basic.dart';
import 'demo/layout_demo.dart';
// import 'demo/view_demo.dart';
import 'demo/sliver_demo.dart';
import 'demo/navigator_demo.dart';
import 'demo/form_demo.dart';
import 'demo/material_components.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: NavigatorDemo(),
      initialRoute: '/mdc',
      routes: {
        '/': (context) => Home(),
        '/about': (context) => Page(title: 'About'),
        '/form': (context) => FormDemo(),
        '/mdc': (context) => MaterialComponents(),
      },
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
        accentColor: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
              Tab(icon: Icon(Icons.view_quilt)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            Basic(),
            LayoutDemo(),
            SliverDemo(),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigation(),
      ),
    );
  }
}
