import 'package:flutter/material.dart';

class DefaultHeader extends StatelessWidget {
  final bool rootScreen;

  DefaultHeader({this.rootScreen = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 24.0,
          color: Colors.black,
        ),
        Stack(children: <Widget>[
          Container(
            height: 80.0,
            color: Colors.black,
            width: double.infinity,
            child: Center(
              child: Image.asset(
                'assets/images/logo_musikbagus.png',
                width: MediaQuery.of(context).size.width / 2,
              ),
            ),
          ),
          rootScreen
              ? SizedBox()
              : Container(
                  width: 80.0,
                  height: 80.0,
                  child: RawMaterialButton(
                    // fillColor: Colors.white,
                    shape: new CircleBorder(),
                    elevation: 0.0,
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 40.0,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
        ]),
      ],
    );
  }
}
