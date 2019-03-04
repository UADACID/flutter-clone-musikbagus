import 'dart:async';

import 'package:flutter/material.dart';

class Banner {
  final String uri;

  Banner({this.uri});
}

class HomeBanner extends StatefulWidget {
  @override
  _HomeBannerState createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  PageController _pageController;
  Timer timer;
  int currentIndex = 0;

  List<Banner> _banners = <Banner>[
    Banner(uri: 'assets/images/banner1.png'),
    Banner(uri: 'assets/images/banner2.png'),
    Banner(uri: 'assets/images/banner3.png')
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: 0, keepPage: false);
    timer = Timer.periodic(Duration(seconds: 5), (Timer t) {
      currentIndex += 1;
      _pageController.animateToPage(currentIndex,
          duration: Duration(milliseconds: 400), curve: Curves.fastOutSlowIn);
      if (currentIndex == _banners.length) {
        currentIndex = 0;
        _pageController.animateToPage(currentIndex,
            duration: Duration(milliseconds: 400), curve: Curves.linear);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _buildDots() {
      var temph = <Widget>[];
      for (var i = 0; i < _banners.length; i++) {
        temph.add(Container(
          margin: const EdgeInsets.symmetric(horizontal: 2.5),
          decoration: new BoxDecoration(
            color: currentIndex == i ? Colors.red : Colors.white,
            shape: BoxShape.circle,
          ),
          height: 10.0,
          width: 10.0,
        ));
      }

      return temph;
    }

    var _buildDotContainer = Align(
      alignment: Alignment.bottomCenter,
      child: Container(
          height: 30.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _buildDots(),
          )),
    );

    List<Widget> _buildListWidget() {
      var temph = <Widget>[];
      for (var i = 0; i < _banners.length; i++) {
        temph.add(Container(
          color: Colors.pink,
          child: Image.asset(_banners[i].uri, fit: BoxFit.cover),
        ));
      }

      return temph;
    }

    return Container(
      height: MediaQuery.of(context).size.height / 4,
      width: double.infinity,
      color: Colors.black,
      child: Stack(
        children: <Widget>[
          PageView(
            controller: _pageController,
            physics: BouncingScrollPhysics(),
            onPageChanged: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            children: _buildListWidget(),
          ),
          _buildDotContainer
        ],
      ),
    );
  }
}
