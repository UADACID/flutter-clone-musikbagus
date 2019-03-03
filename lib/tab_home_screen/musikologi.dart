import 'package:clone_musikbagus/widget/custom_bounce_scroll_view.dart';
import 'package:flutter/material.dart';

class Musikologi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _dummyCOntainer = Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 200.0,
        width: double.infinity,
        color: Colors.green,
      ),
    );
    return Scaffold(
      body: CustomBounceScrollView(
        rootScreen: true,
        children: <Widget>[
          _dummyCOntainer,
          _dummyCOntainer,
          _dummyCOntainer,
          _dummyCOntainer,
          _dummyCOntainer
        ],
        storageKey: 'listMusikologi',
      ),
    );
  }
}
