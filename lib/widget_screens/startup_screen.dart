import 'package:flutter/material.dart';

class StartupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _logo = Image.asset(
      'assets/images/logo_musikbagus.png',
      width: MediaQuery.of(context).size.width / 1.5,
    );
    var _sloganLabel = Opacity(
      opacity: 0.7,
      child: Text(
        'Raya nada. Raya irama.\n Rayakan kehidupan.',
        style: TextStyle(fontSize: 16.0, color: Colors.grey),
        textAlign: TextAlign.center,
      ),
    );
    var _titleLogin = Text(
      'Choose your sosial media\naccount to login',
      style: TextStyle(fontSize: 25.0, color: Colors.white),
      textAlign: TextAlign.center,
    );

    var _loginLogoSosisalMedia = Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width / 5,
          height: MediaQuery.of(context).size.width / 6,
          child: RawMaterialButton(
            fillColor: Colors.white,
            shape: new CircleBorder(),
            elevation: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.asset('assets/images/logo_fb.png'),
            ),
            onPressed: () {},
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 5,
          height: MediaQuery.of(context).size.width / 6,
          child: RawMaterialButton(
            fillColor: Colors.white,
            shape: new CircleBorder(),
            elevation: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Image.asset('assets/images/logo_google.png'),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );

    var _groupText = Opacity(
      opacity: 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '© DAILY LIFE ',
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            'GROUP',
            style: TextStyle(fontSize: 16.0, color: Colors.grey),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/launch_screen_default.png'),
                fit: BoxFit.fill)),
        child: Padding(
          padding: const EdgeInsets.only(top: 90.0, bottom: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  _logo,
                  SizedBox(
                    height: 20.0,
                  ),
                  _sloganLabel,
                ],
              ),
              _titleLogin,
              _loginLogoSosisalMedia,
              _groupText
            ],
          ),
        ),
      ),
    );
  }
}
