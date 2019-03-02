import 'package:flutter/material.dart';

class DefaultHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      color: Colors.black,
      width: double.infinity,
      child: Center(
        child: Image.asset(
          'assets/images/logo_musikbagus.png',
          width: MediaQuery.of(context).size.width / 2,
        ),
      ),
    );
  }
}
