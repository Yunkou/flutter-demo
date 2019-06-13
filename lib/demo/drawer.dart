import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'Yun.kou',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('koopking@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p8833.webp'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                image: NetworkImage(
                    'https://img.ui.cn/data/file/6/3/7/2477736.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.yellow[400].withOpacity(0.6),
                  BlendMode.hardLight,
                ),
              ),
            ),
          ),
          ListTile(
            title: Text('Messages', textAlign: TextAlign.right),
            trailing: Icon(
              Icons.message,
              color: Colors.black12,
              size: 22.0,
            ),
          ),
          ListTile(
            title: Text('Favorite', textAlign: TextAlign.right),
            trailing: Icon(
              Icons.favorite,
              color: Colors.black12,
              size: 22.0,
            ),
          ),
          ListTile(
            title: Text('Settings', textAlign: TextAlign.right),
            trailing: Icon(
              Icons.settings,
              color: Colors.black12,
              size: 22.0,
            ),
          )
        ],
      ),
    );
  }
}
