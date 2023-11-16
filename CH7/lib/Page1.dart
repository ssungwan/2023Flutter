import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    return Text('Middle');
  }

  Widget _buildBottom(){
    return Text('Bottom');
  }
}
