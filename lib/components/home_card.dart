// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

/// This is the stateless widget that the main application instantiates.
class MyCardWidget extends StatelessWidget {
  String title, path;
  Color color;
  IconData icon;

  MyCardWidget({
    Key? key,
    required this.title,
    required this.path,
    required this.color,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, path);
      },
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(15.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: color,
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                contentPadding: EdgeInsets.all(15),
                leading: Icon(icon, size: 60),
                title: Text(title, style: TextStyle(fontSize: 23.0)),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
