import 'package:flutter/material.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
            titile: 'FloatingActionButton',
            page: FloatingActionButtonDemo(),
          ),
          ListItem(
            titile: 'Button',
            page: ButtonDemo(),
          )
        ],
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('Button'),
                  onPressed: () {},
                  splashColor: Colors.grey,
                  elevation: 12.0,
                  textColor: Theme.of(context).accentColor,
                ),
                SizedBox(width: 16.0),
                RaisedButton.icon(
                  icon: Icon(Icons.add),
                  label: Text('Button'),
                  onPressed: () {},
                  elevation: 12.0,
                  splashColor: Colors.grey,
                  textColor: Theme.of(context).accentColor,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget _floatingActionButton = FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
      elevation: 0.0,
    );

    final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
      onPressed: () {},
      elevation: 0.0,
      icon: Icon(Icons.add),
      label: Text('Add'),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0.0,
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String titile;
  final Widget page;

  ListItem({
    this.titile,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(titile),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
