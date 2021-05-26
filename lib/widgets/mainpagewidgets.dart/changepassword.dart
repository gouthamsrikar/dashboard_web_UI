import 'package:flutter/material.dart';

class Changepassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [],
        ),
        TextButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Change Password',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.yellow[700]),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
        )
      ],
    );
  }
}
