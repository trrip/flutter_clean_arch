import 'package:flutter/material.dart';
import 'package:flutter_app_sample_layouts/content_view.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CustomGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(10, (index) {
        return Center(
          child: RaisedButton(
            onPressed: () {
              _neverSatisfied(context);
            },
            child: Text(
              'Item $index',
              style: Theme.of(context).textTheme.headline,
            ),
          ),
        );
      }),
    );
  }
}

Future<void> _neverSatisfied(BuildContext context) async {
  final pageController = PageController(initialPage: 1);

  return showGeneralDialog<void>(
      barrierColor: Colors.black.withOpacity(0.5),
      transitionBuilder: (context, a1, a2, widget) {
        return Transform.scale(
          scale: a1.value,
          child: Container(
            width: 200,
            height: 140,
            child: Opacity(
              opacity: a1.value,
              child: AlertDialog(
                title: Center(child: Text('Gudieline Name!!')),
                content: Container(
                  height:  250.0,
                  width: 250.0,
                  child: PageView(
                    controller: pageController,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        child: GridView.count(
                          primary: false,
                          padding: const EdgeInsets.all(2),
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          crossAxisCount: 3,
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(5),
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ContentView()),
                                    );
                                  },
                                  child: const Text('Guideline 1')),
                              color: Colors.teal[100],
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              child: const Text('Tool 1'),
                              color: Colors.teal[100],
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              child: const Text('Tool 2'),
                              color: Colors.teal[100],
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              child: const Text('Tool 3'),
                              color: Colors.teal[100],
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              child: const Text('Tool 4'),
                              color: Colors.teal[100],
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              child: const Text('Tool 5'),
                              color: Colors.teal[100],
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              child: const Text('Tool 6'),
                              color: Colors.teal[100],
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              child: const Text('Tool 7'),
                              color: Colors.teal[100],
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              child: const Text('Tool 8'),
                              color: Colors.teal[100],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: GridView.count(
                          primary: false,
                          padding: const EdgeInsets.all(10),
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          crossAxisCount: 3,
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(5),
                              child: const Text('Guideline 2'),
                              color: Colors.teal[100],
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              child: const Text('Tool 1'),
                              color: Colors.teal[100],
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              child: const Text('Tool 2'),
                              color: Colors.teal[100],
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              child: const Text('Tool 3'),
                              color: Colors.teal[100],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
      transitionDuration: Duration(milliseconds: 400),
      barrierDismissible: true,
      barrierLabel: '',
      context: context,
      pageBuilder: (context, animation1, animation2) {});
}

class PaginatedGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return new Image.network(
          "http://via.placeholder.com/350x150",
          fit: BoxFit.fill,
        );
      },
      pagination: SwiperPagination(),
      control: SwiperControl(),
    );
  }
}
