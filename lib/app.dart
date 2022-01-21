import 'package:flutter/material.dart';
import 'package:infinite_swipe_app/constants/config.dart';
import 'package:infinite_swipe_app/widgets/infinite_swipe_demo.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
    this.pageIndex,
  }) : super(key: key);

  final int? pageIndex;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kAppTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InfiniteSwipeDemo(
        pageIndex: pageIndex,
      ),
    );
  }
}