import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }

  Widget _buildTop(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(
                  Icons.local_taxi,
                  size: 41,
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.local_taxi,
                  size: 41,
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.local_taxi,
                  size: 41,
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.local_taxi,
                  size: 41,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }


  Widget _buildMiddle(){
    final imageItems = [
      'assets/pby1.jpg',
      'assets/pby2.jpg',
      'assets/pby3.jpg',
    ];

    return CarouselSlider(
      options: CarouselOptions(
        height: 500.0,
      ),
      items: imageItems.map((path)
      {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: ClipRect(
                child: Image.asset(
                  path,
                  fit:BoxFit.cover,
                ),
              ),
              );
          },
        );
      }
      ).toList(),
    );
  }

  Widget _buildBottom(){
    final items = List.generate(
        10, (i){
          return ListTile(
            leading: Icon(Icons.notifications_none),
            title: Text('공지사항입니다.'),
          );
    });
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: items,
    );
  }
}