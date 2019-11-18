import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ContentView extends StatefulWidget {
  @override
  _ContentViewState createState() => _ContentViewState();
}

class _ContentViewState extends State<ContentView> {
  WebViewController _controller ;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Tool 1')),
      body: WebView(
        initialUrl: 'file:///assets/Interactives/interactive_0000906.html',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
//          _loadHtmlFromAssets();
        },
       onPageFinished: (String url){
//          _controller.evaluateJavascript("alert('superman')");
//          _controller.evaluateJavascript('sub2()');
          _controller.evaluateJavascript('loadDataFile("")');
       },
      ),
    );
  }

  _loadHtmlFromAssets() async {
//    String fileText = await rootBundle
//        .loadString('assets/Interactives/interactive_0000906.html');
////    print(fileText);
//
//  var str = Uri(path: Uri.encodeFull('assets/Interactives/interactive_0000906.html')).path;
//  print('this is the path ${str.toString()}');
//  var urlForFile =  Uri.file("interactive_0000906.html",windows: false);
//    print(urlForFile.toString());
////    _controller.loadUrl(url)
//      print(File(urlForFile.toString()));
//
//    final dir = Directory("/");
//    List<String> list = [];
//    print(dir.existsSync());    // <---- it also print: false
//    var files = dir.listSync().toList();
//    files.forEach((e) => list.add(e.path));
//
//    if(FileSystemEntity.typeSync(urlForFile.toString()) == FileSystemEntityType.notFound){
//
//        print("is not present");
//
//      }
//      else{
//        print("is present");
//
//
//      }
//
//
//    _controller.loadUrl("file:///assets/Interactives/interactive_0000906.html");
//

  }
}
