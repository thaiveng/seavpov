import 'package:flutter/material.dart';
import 'package:seavphov/view/bookView.dart';
import 'package:seavphov/view/feedView.dart';
import 'package:seavphov/view/notificationView.dart';
import 'package:seavphov/view/postBookView.dart';
import 'package:seavphov/view/profileView.dart';

import '../constant/Constant.dart';

class HomepageView extends StatefulWidget {
  @override
  _HomepageViewState createState() => _HomepageViewState();
}

class _HomepageViewState extends State<HomepageView> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {

    final tabs = [
      BookView(),
      FeedView(),
      PostBookView(),
      NotificationView(),
      ProfileView()
    ];
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(Constant.kColorWhite),
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.import_contacts,color: Color(Constant.background)),
            title: Text('Book',style: TextStyle(color: Color(Constant.background)),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.language,color: Color(Constant.background)),
            title: Text('Feed',style: TextStyle(color: Color(Constant.background)),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_to_photos,color: Color(Constant.background)),
            title: Text('Post',style: TextStyle(color: Color(Constant.background)),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active,color: Color(Constant.background)),
            title: Text('Notification',style: TextStyle(color: Color(Constant.background)),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Color(Constant.background)),
            title: Text('Profile',style: TextStyle(color: Color(Constant.background)),),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
