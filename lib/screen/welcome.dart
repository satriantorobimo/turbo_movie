import 'package:flutter/material.dart';
import 'package:turbo_movie/screen/login.dart';
import 'package:turbo_movie/widget/logo.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          LogoWidget(),
          Text('WELCOME', style: TextStyle(color: Colors.black, fontSize: 24)),
          RaisedButton(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'GETTING START',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            color: Colors.blue[600],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0)),
          )
        ],
      ),
    );
  }
}
