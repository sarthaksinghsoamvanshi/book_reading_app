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
          secondBox(),
        ],
      ),
    );
  }

  Container secondBox() {
    return Container(
      height: 210,
      width: 220,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[300],
                      offset: Offset(0, 2),
                      spreadRadius: 1,
                      blurRadius: 2)
                ],
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    width: 120,
                    height: 40,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              ),
                            ),
                            child: Text(
                              "Read",
                              style: TextStyle(color: Colors.white),
                            ),
                            alignment: Alignment.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  bottom: 0,
                  right: 0,
                ),
                Positioned(
                  left: 20,
                  bottom: 20,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 10),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          SizedBox(height: 5),
                          Text("4.5")
                        ],
                      ),
                      Wrap(children: [
                        Container(
                          padding: EdgeInsets.only(top: 5, left: 10),
                          child: Text(
                              "my name is sarthak singh and i am a flutter developer"),
                          width: 145,
                        )
                      ])
                    ],
                  ),
                ),
                Positioned(
                  child: Container(
                    // color: Colors.blue,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("New York Time Best for 2020"),
                        Wrap(
                          children: [
                            Text(
                              "sarthak singh",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                          ],
                        ),
                        Text(
                          "author",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  left: 20,
                  top: 20,
                )
              ],
            ),
          ),
          Positioned(
            right: 35,
            child: Container(
              height: 140,
              width: 110,
              color: Colors.red,
              child: Image.asset("images/cover.jpg"),
            ),
          ),
        ],
      ),
    );
  }
}
