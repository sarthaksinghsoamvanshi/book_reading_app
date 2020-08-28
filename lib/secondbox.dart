import 'package:book_reading_app/detailspage.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  Widget build(BuildContext context) {
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
                      offset: Offset(2, 2),
                      spreadRadius: 2,
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
                          child: GestureDetector(
                            onTap: () => {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                    DetailsPage(
                                    bookname: "The World of Dreams",
                                    author: "Sarthak..",
                                    image: "images/cover.jpg",
                                    rating: 4.9,
                                  ),
                                ),
                              )
                            },
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
                          Text("4.9")
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
                            Container(
                              // color: Colors.amber,
                              width: 160,
                              child: Text(
                                "The Dreams",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Sarthak Singh",
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
