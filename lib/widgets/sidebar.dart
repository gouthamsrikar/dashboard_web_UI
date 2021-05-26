import 'dart:html';

import 'package:flutter/material.dart';

enum Dashboard { profile, billing }

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var chnager = Dashboard.profile;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: height,
      width: width / 4,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(200),
            child: Image.network(
              'https://scontent.fvtz2-1.fna.fbcdn.net/v/t1.6435-9/90245718_2603982573206837_7374722107252408320_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=a4a2d7&_nc_ohc=Gu-upbHioqAAX-v1zMW&tn=M-9zUOmwAudkAGhA&_nc_ht=scontent.fvtz2-1.fna&oh=05b10ac1971d9f49ccd206c51545a436&oe=60D4F684',
              fit: BoxFit.cover,
              height: 200,
              width: 200,
            ),
          ),
          Text(
            'Goutham Srikar',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Divider(),
          Sidebarbutton(
            title: 'Dashboard',
            icon: Icon(Icons.ac_unit, color: Colors.black),
          ),
          Divider(color: Colors.transparent),
          Sidebarbutton(
            title: 'Profile',
            icon: Icon(Icons.ac_unit, color: Colors.black),
          ),
          Divider(color: Colors.transparent),
          Sidebarbutton(
            title: 'Billing',
            icon: Icon(Icons.ac_unit, color: Colors.black),
          ),
          Divider(color: Colors.transparent),
          Sidebarbutton(
            title: 'Live',
            icon: Icon(Icons.ac_unit, color: Colors.black),
          ),
          Divider(color: Colors.transparent),
          Sidebarbutton(
            title: 'FoodPlans',
            icon: Icon(Icons.ac_unit, color: Colors.black),
          ),
          Divider(color: Colors.transparent),
          Sidebarbutton(
            title: 'Logout',
            icon: Icon(Icons.ac_unit, color: Colors.black),
          ),
          Divider(color: Colors.transparent),
        ],
      ),
    );
  }
}

class Sidebarbutton extends StatefulWidget {
  final String title;
  final Icon icon;

  Sidebarbutton({
    @required this.title,
    @required this.icon,
  });

  @override
  _SidebarbuttonState createState() => _SidebarbuttonState();
}

class _SidebarbuttonState extends State<Sidebarbutton> {
  double elevatedheight = 0;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (f) {
        setState(() {
          elevatedheight = 10;
        });
      },
      onExit: (f) {
        setState(() {
          elevatedheight = 0;
        });
      },
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          elevation: MaterialStateProperty.all(elevatedheight),
          shadowColor: MaterialStateProperty.all(Colors.grey[300]),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              widget.icon,
              SizedBox(width: 20),
              Text(
                widget.title,
                style: TextStyle(color: Colors.black, fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
