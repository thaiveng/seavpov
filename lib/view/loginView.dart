import 'package:flutter/material.dart';
import 'package:seavphov/view/homepageView.dart';
import '../constant/Constant.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(Constant.background),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 100.0),
            Center(
              child: Image.asset(
                "assets/images/logo.png",
                height: 150.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "សៀវភៅ",
              style: TextStyle(
                color: Color(Constant.kLogoColor),
                fontSize: 24,
              ),
            ),
            Container(
              width: 323,
              height: 40,
              child: TextField(
                style: TextStyle(
                  color: Color(Constant.kColorWhite),
                ),
                decoration: const InputDecoration(
                  hintText: "Email",
                  labelText: "Email",
                  prefixIcon: Icon(
                    Icons.person,
                    color: Color(Constant.kColorWhite),
                  ),
                  hintStyle: TextStyle(color: Color(Constant.kColorWhite)),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 323,
              height: 40,
              child: TextField(
                style: TextStyle(
                  color: Color(Constant.kColorWhite),
                ),
                decoration: const InputDecoration(
                  hintText: "Password",
                  labelText: "Password",
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color(Constant.kColorWhite),
                  ),
                  hintStyle: TextStyle(
                    color: Color(Constant.kColorWhite),
                  ),
                ),
                obscureText: true,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 323,
              height: 40,
              child: FlatButton(
                onPressed: () {
                  _handleSubmit(context);
                  // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homepage()));
                },
                color: Color(Constant.kLogoColor),
                child: Text('LOG IN'),
                textColor: Color(Constant.kColorWhite),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Do not have an account?",
              style: TextStyle(
                color: Color(Constant.kColorWhite),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _handleSubmit(BuildContext context) async {
    Dialogs.showLoadingDialog(context);
    await Future.delayed(Duration(seconds: 1));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomepageView()));
    // Navigator.pushReplacementNamed(context, "/home");
    // } catch (error) {
    // print(error);
  }
}

class Dialogs {
  static Future<void> showLoadingDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return new WillPopScope(
          onWillPop: () async => false,
          child: SimpleDialog(
            backgroundColor: Colors.transparent,
            children: <Widget>[
              Center(
                child: Column(
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Please Wait....",
                      style: TextStyle(color: Color(Constant.kLogoColor)),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
