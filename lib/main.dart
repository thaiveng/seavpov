import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './constant/Constant.dart';

import './view/loginView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
//      BlocProvider(
//      create: (context)=>LoginView(),
//      child:
      MaterialApp(
        title: 'សៀវភៅ',
        theme: ThemeData(
          primaryColor: Color(Constant.background),
          accentColor: Color(0xFFD81B60)
        ),
        debugShowCheckedModeBanner: false,
        home: LoginView(),
//      ),
    );
  }
}

