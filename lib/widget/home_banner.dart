import 'dart:async';

import 'package:flutter/material.dart';

class HomeBanner extends StatefulWidget {
  @override
  _HomeBannerState createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  PageController _pageController;
  Timer timer;
  int currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0, keepPage: false);
    timer = Timer.periodic(Duration(seconds: 5), (Timer t) {
      currentIndex += 1;
      _pageController.animateToPage(currentIndex,
          duration: Duration(milliseconds: 400), curve: Curves.fastOutSlowIn);
      if (currentIndex == 3) {
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
    var _buildDot = Align(
      alignment: Alignment.bottomCenter,
      child: Container(
          height: 30.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: new BoxDecoration(
                  color: currentIndex == 0 ? Colors.red : Colors.white,
                  shape: BoxShape.circle,
                ),
                height: 10.0,
                width: 10.0,
              ),
              SizedBox(
                width: 5.0,
              ),
              Container(
                decoration: new BoxDecoration(
                  color: currentIndex == 1 ? Colors.red : Colors.white,
                  shape: BoxShape.circle,
                ),
                height: 10.0,
                width: 10.0,
              ),
              SizedBox(
                width: 5.0,
              ),
              Container(
                decoration: new BoxDecoration(
                  color: currentIndex == 2 ? Colors.red : Colors.white,
                  shape: BoxShape.circle,
                ),
                height: 10.0,
                width: 10.0,
              )
            ],
          )),
    );
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
            children: <Widget>[
              Container(
                color: Colors.pink,
                child:
                    Image.asset('assets/images/banner1.png', fit: BoxFit.cover),
              ),
              Container(
                color: Colors.cyan,
                child:
                    Image.asset('assets/images/banner2.png', fit: BoxFit.cover),
              ),
              Container(
                color: Colors.deepPurple,
                child:
                    Image.asset('assets/images/banner3.png', fit: BoxFit.cover),
              ),
            ],
          ),
          _buildDot
        ],
      ),
    );
  }
}
