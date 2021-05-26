import 'package:dashboard/widgets/mainpagewidgets.dart/changepassword.dart';
import 'package:dashboard/widgets/mainpagewidgets.dart/myprofile.dart';
import 'package:flutter/material.dart';

enum Profile {
  myprofile,
  personalinfo,
  changlepassword,
}

class Mainpage extends StatefulWidget {
  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  var change = Profile.myprofile;
  String changedtext = 'My profile';
  void changetexts() {
    setState(() {
      if (change == Profile.myprofile) {
        changedtext = 'Myprofle';
      } else if (change == Profile.personalinfo) {
        changedtext = 'Personal profile';
      } else if (change == Profile.changlepassword) {
        changedtext = 'Change password';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
        padding: EdgeInsets.all(50),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Home ',
                    style: TextStyle(fontSize: 30, color: Colors.yellow[700]),
                  ),
                  Text(
                    '/ ',
                    style: TextStyle(fontSize: 30, color: Colors.grey),
                  ),
                  Text(
                    'Profile ',
                    style: TextStyle(fontSize: 30, color: Colors.yellow[700]),
                  ),
                  Text(
                    '/ ',
                    style: TextStyle(fontSize: 30, color: Colors.grey),
                  ),
                  Text(
                    '$changedtext',
                    style: TextStyle(fontSize: 30, color: Colors.grey),
                  ),
                  Spacer(),
                  IconButton(
                      iconSize: 50,
                      icon: Icon(Icons.logout),
                      // ImageIcon(
                      //   NetworkImage(
                      //       'https://www.computerhope.com/issues/pictures/logout.jpg'),
                      // ),
                      onPressed: () {}),
                  IconButton(
                      color: Colors.yellow[700],
                      iconSize: 50,
                      icon: Icon(Icons.logout),
                      onPressed: () {})
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.all(40),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      color: Colors.grey[300],
                      offset: Offset(0, 10),
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                          onPressed: () {
                            setState(() {
                              change = Profile.myprofile;
                              changetexts();
                            });
                          },
                          child: Text(
                            'Myprofle',
                            style: TextStyle(
                              fontSize: 30,
                              color: change == Profile.myprofile
                                  ? Colors.grey
                                  : Colors.yellow[700],
                            ),
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Personal Info',
                              style: TextStyle(
                                fontSize: 30,
                                color: change == Profile.personalinfo
                                    ? Colors.grey
                                    : Colors.yellow[700],
                              ),
                            )),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                change = Profile.changlepassword;
                                changetexts();
                              });
                            },
                            child: Text(
                              'Change password',
                              style: TextStyle(
                                fontSize: 30,
                                color: change == Profile.changlepassword
                                    ? Colors.grey
                                    : Colors.yellow[700],
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    change == Profile.myprofile ? Myprofile() : Changepassword()
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
