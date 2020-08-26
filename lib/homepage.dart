import 'package:book_reading_app/books.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, top: 35),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "What are you\n",
                      style: TextStyle(color: Colors.brown, fontSize: 30)),
                  TextSpan(
                      text: "reading ",
                      style: TextStyle(color: Colors.brown, fontSize: 30)),
                  TextSpan(
                    text: "today ?",
                    style: TextStyle(
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 230,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Books(),
          )
        ],
      ),
    );
  }
}
