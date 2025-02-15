import 'package:flutter/material.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            // Row is the actual widget being used as the title
            children: [
              Icon(Icons.home),
              SizedBox(width: 8),
              Text('Home'),
            ],
          ),
        ),
        body: Text(''));
  }
}
