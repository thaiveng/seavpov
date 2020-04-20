import 'package:flutter/material.dart';

class PostBookView extends StatefulWidget {
  @override
  _PostBookViewState createState() => _PostBookViewState();
}

class _PostBookViewState extends State<PostBookView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        automaticallyImplyLeading: false,
//        title: Text('Post'),
//      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 30.0,),
              Text("Title Book",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              Container(
                height: 50.0,
                padding: EdgeInsets.only(top: 10.0),
                child: TextField(
                  decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal)),
                  ),
                ),
              ),
              SizedBox(height: 15.0,),
              Text("Author",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              Container(
                height: 50.0,
                padding: EdgeInsets.only(top: 10.0),
                child: TextField(
                  decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal)),
                  ),
                ),
              ),
              SizedBox(height: 15.0,),
              Text("Choose Category",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              Container(
                height: 50.0,
                padding: EdgeInsets.only(top: 10.0),
                child: TextField(
                  decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
