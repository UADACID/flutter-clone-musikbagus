import 'package:flutter/material.dart';

class HomeMusikologi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _buildTilte = Container(
      decoration: BoxDecoration(
          color: Colors.black,
          border: Border(top: BorderSide(width: 1.0, color: Colors.red))),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      alignment: Alignment.centerLeft,
      height: 60.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Musikologi',
              style: TextStyle(
                  color: Color(0xffd20a26),
                  fontSize: 22,
                  fontWeight: FontWeight.bold)),
          Text('View all',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ))
        ],
      ),
    );
    var _buildBanner = Container(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width - 80.0,
            height: MediaQuery.of(context).size.width - 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                image: DecorationImage(
                    image: AssetImage('assets/images/banner_musikologi.png'))),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Musikbagus Day',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
          Text('Open Mic - Calling for Performance',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              )),
          SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
    return Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[_buildTilte, _buildBanner],
      ),
    );
  }
}
