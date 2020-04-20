import 'package:flutter/material.dart';

class FeedView extends StatefulWidget {
  @override
  _FeedViewState createState() => _FeedViewState();
}

class _FeedViewState extends State<FeedView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: <Widget>[
          ListTile(
            title: Text("Book"),
            subtitle: Text("This is subtitle"),
            leading: Image.asset("assets/images/logo.png"),
          ),
        ],
      ),
    );
  }
}
