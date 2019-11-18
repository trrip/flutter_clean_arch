import 'package:flutter/material.dart';
import 'package:flutter_app_sample_layouts/custom_grid.dart';
import 'package:flutter_app_sample_layouts/intrinsic_width.dart';
import 'package:flutter_app_sample_layouts/row_col.dart';
import 'package:flutter_app_sample_layouts/stack.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Layouts'),
        ),
//        body: Column(
//          children: <Widget>[
//            RowColDemo(),
//            IntrinsicProp(),
//          ],
//        ),
      body: CustomGrid(),
      ),
    );
  }
}
