import 'package:flutter/material.dart';

class IntrinsicProp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          RaisedButton(
            onPressed: () {},
            child: Text('short'),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('A bit longer'),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('The longest text button'),
          ),
        ],
      ),
    );
  }
}
