import 'package:flutter/material.dart';

import 'dart:html';

import 'package:google_maps/google_maps.dart';

class Myprofile extends StatelessWidget {
  final mapOptions = MapOptions()
    ..zoom = 8
    ..center = LatLng(-34.397, 150.644);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Goutham Srikar',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    child: Text(
                      'Varanasi,UP',
                      style: TextStyle(color: Colors.white),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 5,
                    child: Text(
                      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishin',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  )
                ],
              ),
              Text(
                'address: \n gegegeg fe ge geg  gte g geg errghrhb\n rhhghr hrhr gwr gr hrhrhh heh',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              )
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.height / 3,
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
            //   child: GMap()
            // GoogleMap(
            //     initialCameraPosition:
            //         CameraPosition(target: LatLng(55, 88), zoom: 15)),
          )
        ],
      ),
    );
  }
}
