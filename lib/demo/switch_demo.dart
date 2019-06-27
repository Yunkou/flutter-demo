import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _swithcItemA = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwitchDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SwitchListTile(
              value: _swithcItemA,
              onChanged: (value) {
                setState(() {
                  _swithcItemA = value;
                });
              },
              title: Text('Switch Item A'),
              subtitle: Text('Description'),
              secondary:
                  Icon(_swithcItemA ? Icons.visibility : Icons.visibility_off),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  _swithcItemA ? '😊' : '😢',
                  style: TextStyle(fontSize: 32.0),
                ),
                Switch(
                  value: _swithcItemA,
                  onChanged: (value) {
                    setState(() {
                      _swithcItemA = value;
                    });
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
    ;
  }
}
