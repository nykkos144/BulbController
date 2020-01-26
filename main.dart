import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MaterialApp(
  home: Home(),
));


class Home extends StatelessWidget {

  Future getDataOn() async {
    await http.get(
      Uri.encodeFull("https://api.thinger.io/v2/users/dad69/devices/esp8266/On"),
      headers: {
        'Authorization' : 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiJidWxiSWQiLCJ1c3IiOiJkYWQ2OSJ9.-KqH1dgvm3kd9HLlb9h572cdnOhOGenuiSdW9HpWIrw'
      }
    );
    print('ON');
  }
  Future getDataOff() async {
    await http.get(
      Uri.encodeFull("https://api.thinger.io/v2/users/dad69/devices/esp8266/Off"),
      headers: {
        'Authorization' : 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiJidWxiSWQiLCJ1c3IiOiJkYWQ2OSJ9.-KqH1dgvm3kd9HLlb9h572cdnOhOGenuiSdW9HpWIrw'
      }
    );
    print('OFF');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Bulb Controller'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 50.0,
            width: 200.0,

            child: RaisedButton(
              onPressed: getDataOn,

              child: Text(
                'ON',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              
              color: Colors.blue[600],
            ),
          ),
          SizedBox(height: 10.0),
          SizedBox(
            height: 50.0,
            width: 200.0,

            child: RaisedButton(
              onPressed: getDataOff,
              child: Text(
                'OFF',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              
              color: Colors.blue[600],
            ),
          ),
          
          Container(
            color: Colors.red[100],
          ),
        ],
      ),
    );
  }
}



