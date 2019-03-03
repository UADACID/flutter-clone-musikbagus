import 'package:clone_musikbagus/widget/custom_bounce_scroll_view.dart';
import 'package:clone_musikbagus/widget/video_player.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _dummyCOntainer = Padding(
      padding: const EdgeInsets.all(20.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => VideoPlayer(),
              ));
        },
        child: Container(
          height: 200.0,
          width: double.infinity,
          child: Image.network(
            'https://hellosehat.com/wp-content/uploads/2018/05/shutterstock_611045375.jpg',
            fit: BoxFit.cover,
          ),
          // color: Colors.pink,
        ),
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
        storageKey: 'listHome',
      ),
    );
  }
}
