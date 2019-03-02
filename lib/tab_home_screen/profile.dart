import 'package:clone_musikbagus/widget/default_header.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _dummyCOntainer = Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 200.0,
        width: double.infinity,
        color: Colors.red,
      ),
    );
    return Scaffold(
      body: Column(
        children: <Widget>[
          DefaultHeader(),
          Expanded(
            child: ListView(
              key: PageStorageKey('listProfile'),
              shrinkWrap: true,
              children: <Widget>[
                _dummyCOntainer,
                _dummyCOntainer,
                _dummyCOntainer,
                _dummyCOntainer,
                _dummyCOntainer
              ],
            ),
          )
        ],
      ),
    );
  }
}
