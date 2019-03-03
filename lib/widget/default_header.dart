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
        Stack(alignment: Alignment.centerLeft, children: <Widget>[
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
                  padding: const EdgeInsets.only(left: 10.0),
                  width: 50.0,
                  height: 50.0,
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
