import 'package:dashboard/widgets/mainpage.dart';
import 'package:dashboard/widgets/sidebar.dart';
import 'package:flutter/material.dart';

class Mainscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Sidebar(),
          VerticalDivider(),
          Expanded(child: Mainpage()),
        ],
      ),
    );
  }
}
