import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        IconBadeg(Icons.pool),
        IconBadeg(Icons.beach_access),
        IconBadeg(Icons.airplanemode_active),
      ],
    );
  }
}

class IconBadeg extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadeg(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
