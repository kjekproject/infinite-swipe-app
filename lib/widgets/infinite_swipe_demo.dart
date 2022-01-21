import 'package:flutter/material.dart';
import 'package:infinite_swipe_app/constants/shared_pref_key_names.dart';
import 'package:infinite_swipe_app/pages/first_page.dart';
import 'package:infinite_swipe_app/pages/second_page.dart';
import 'package:infinite_swipe_app/pages/third_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InfiniteSwipeDemo extends StatefulWidget {
  const InfiniteSwipeDemo({Key? key, 
    this.pageIndex,
  }) : super(key: key);

  final int? pageIndex;

  @override
  _InfiniteSwipeDemoState createState() => _InfiniteSwipeDemoState();
}

class _InfiniteSwipeDemoState extends State<InfiniteSwipeDemo> {
  late PageController _controller;
  late SharedPreferences _prefs;
  final List<Widget> _pagesList = const [
    FirstPage(),
    SecondPage(),
    ThirdPage(),
  ];


  void _onPageChange(int page) {
    int pageIndex = page % _pagesList.length;
    _prefs.setInt(kPrefKey, pageIndex);
    if(page == 0) {
      _controller.jumpToPage(
        _pagesList.length * 100,
      );
    }
  }

  // Creates page controller with initial page set to large number 
  // corrected by page index - last opend page index.
  // It's workaround to create an infinite swipe with smooth transition between pages.
  PageController _createPageController() {
    return PageController(initialPage:
      widget.pageIndex == null 
        ? _pagesList.length * 100
        : _pagesList.length * 100 + widget.pageIndex!,
    );
  }

  @override
  void initState() {
    super.initState();
    
    _controller = _createPageController();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
      _prefs = await SharedPreferences.getInstance();
    });
  }
  
  @override
  void dispose() { 
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        onPageChanged: (int page) => _onPageChange(page),
        itemBuilder: (context, index) {
          return _displayPage(index);
        },
      ),
    );
  }

  Widget _displayPage(int index) {
    int pageIndex = index % _pagesList.length;
    Widget page = _pagesList[pageIndex];
    
    return page;
  }
}