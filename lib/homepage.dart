import 'package:book_reading_app/books.dart';
import 'package:book_reading_app/continue.dart';
import 'package:book_reading_app/secondbox.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "What are you\n",
                      style: TextStyle(color: Colors.black, fontSize: 30)),
                  TextSpan(
                      text: "reading ",
                      style: TextStyle(color: Colors.black, fontSize: 30)),
                  TextSpan(
                    text: "today ?",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 250,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Books(),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            width: double.infinity,
            padding: EdgeInsets.only(top: 5, left: 20),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "Best of the ",
                      style: TextStyle(color: Colors.black, fontSize: 30)),
                  TextSpan(
                      text: "day",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 30))
                ],
              ),
            ),
          ),
          Box(),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            width: double.infinity,
            padding: EdgeInsets.only(top: 5, left: 20),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "Continue ",
                      style: TextStyle(color: Colors.black, fontSize: 30)),
                  TextSpan(
                      text: "reading...",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 30))
                ],
              ),
            ),
          ),
          Continue()
        ],
      ),
    );
  }
}
