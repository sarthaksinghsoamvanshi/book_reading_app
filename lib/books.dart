import 'package:flutter/material.dart';

class Books extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var books = [
      {
        "bookname": "sarthak",
        "author":"Jkrowling",
        "image":"image",
        "rating":4.5
      },
      {
        "bookname": "sarthak",
        "author":"Jkrowling",
        "image":"image",
        "rating":4
      },
      {
        "bookname": "sarthak",
        "author":"Jkrowling",
        "image":"image",
        "rating":5
      },
      {
        "bookname": "sarthak",
        "author":"Jkrowling",
        "image":"image",
        "rating":4.7
      },
    ];
    return ListView.builder(
        itemCount: books.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Expanded(
              child: Container(
                width: 200,
                color: Colors.black,
              ),
            ),
          );
        });
  }
}
