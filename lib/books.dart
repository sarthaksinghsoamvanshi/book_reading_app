import 'package:flutter/material.dart';

class Books extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var books = [
      {
        "bookname": "sarthak & singh",
        "author": "Jkrowling",
        "image": "image",
        "rating": 4.5,
      },
      {
        "bookname": "sarthak",
        "author": "Jkrowling",
        "image": "image",
        "rating": 4
      },
      {
        "bookname": "sarthak",
        "author": "Jkrowling",
        "image": "image",
        "rating": 5
      },
      {
        "bookname": "sarthak",
        "author": "Jkrowling",
        "image": "image",
        "rating": 4.7
      },
    ];
    return ListView.builder(
      itemCount: books.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, index) {
        return Container(
          width: 220,
          child: Stack(
            children: [
              Container(
                margin:
                    EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 10),
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
                        height: 40,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                child: Text("Details"),
                                alignment: Alignment.center,
                              ),
                            ),
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
                      left: 0,
                      right: 0,
                    ),
                    Positioned(
                      right: 10,
                      top: 10,
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: null,
                            color: Colors.grey,
                            icon: Icon(Icons.favorite_border),
                          ),
                          SizedBox(height: 10),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          SizedBox(height: 5),
                          Text("${books[index]["rating"]}")
                        ],
                      ),
                    ),
                    Positioned(
                      child: Container(
                        // color: Colors.blue,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(books[index]["bookname"],style: TextStyle(fontWeight: FontWeight.bold,fontSize:20),),
                            Text(books[index]["author"])
                          ],
                        )
                      ),
                      left: 20,
                      top: 135,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 25),
                height: 140,
                width: 110,
                color: Colors.red,
                child: Image.asset("images/cover.jpg"),
              ),
            ],
          ),
        );
      },
    );
  }
}
