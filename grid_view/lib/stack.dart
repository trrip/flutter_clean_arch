import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'A',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 50, color: Colors.red),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'B',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.blue),
              ),
            ),
          ),
        ),

        Positioned.fill(child: Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'C',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.blue),
            ),
          ),
        )),

        Positioned.fill(child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'D',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.blue),
            ),
          ),
        )),


        Positioned.fill(child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'E',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.blue),
            ),
          ),
        )),
      ],
    );
  }
}
