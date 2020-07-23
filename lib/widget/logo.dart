import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Image.asset(
                  'assets/logo.png',
                  width: 32,
                ),
                SizedBox(width: 4),
                Text('Turbo',
                    style: TextStyle(color: Colors.blue[600], fontSize: 20))
              ],
            ),
          ),
          Text('Movie', style: TextStyle(color: Colors.blue[600], fontSize: 40))
        ],
      ),
    );
  }
}
