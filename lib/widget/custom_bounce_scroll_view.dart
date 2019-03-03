import 'package:clone_musikbagus/widget/default_header.dart';
import 'package:flutter/material.dart';

class CustomBounceScrollView extends StatelessWidget {
  final String storageKey;
  final List<Widget> children;
  final bool rootScreen;

  CustomBounceScrollView(
      {this.storageKey, this.children, this.rootScreen = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        DefaultHeader(rootScreen: rootScreen),
        Expanded(
          child: MediaQuery.removePadding(
            removeTop: true,
            child: ListView(
              physics: BouncingScrollPhysics(),
              key: PageStorageKey(storageKey),
              shrinkWrap: true,
              children: children,
            ),
            context: context,
          ),
        )
      ],
    );
  }
}
