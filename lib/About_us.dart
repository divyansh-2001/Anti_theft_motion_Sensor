import 'package:flutter/material.dart';

class about_Us extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anti Theft Motion Detector',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black38,
          toolbarHeight: 70.0,
          title: Center(
            child: Text(
              'About Us & Our Project',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
        body : Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/about.PNG"),
                  fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
