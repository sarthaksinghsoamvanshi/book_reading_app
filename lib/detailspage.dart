import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, top: 20),
                height: 370,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          children: [
                            Container(
                              // color: Colors.blue,
                              padding: EdgeInsets.only(top: 20),
                              width: 175,
                              // color: Colors.blue,
                              child: Text(
                                "Crushing & influence ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40),
                              ),
                            ),
                          ],
                        ),
                        Wrap(
                          children: [
                            Container(
                              width: 175,
                              padding: EdgeInsets.only(top: 10),
                              // color: Colors.black,
                              child: Text(
                                "Author",
                                style: TextStyle(
                                  // color: Colors.black,
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                            )
                          ],
                        ),
                        Wrap(
                          children: [
                            Container(
                              width: 130,
                              // color: Colors.black,
                              padding: EdgeInsets.only(top: 10),
                              // color: Colors.black,
                              child: Text(
                                "this is an example module of text placed by the developer to test various things and its pretty demo this is an example to test various things and its pretty demo",
                                style: TextStyle(
                                  // color: Colors.black,
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Positioned(
                      right: 20,
                      top: 20,
                      child: Container(
                        height: 200,
                        width: 130,
                        color: Colors.black,
                        child: Image.asset("images/cover.jpg"),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      bottom: 50,
                      child: Container(
                        width: 100,
                        height: 40,
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
                    Positioned(
                      right: 160,
                      top: 100,
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
                          Text(
                            "4.2",
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 330, left: 15, right: 15),
                child: Column(
                  children: [
                    buildChapter(),
                    buildChapter(),
                    buildChapter(),
                    buildChapter(),
                    buildChapter(),
                    buildChapter(),
                    buildChapter(),
                    buildChapter(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container buildChapter() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      margin: EdgeInsets.only(bottom: 10),
      // margin: EdgeInsets.only(top, left: 15, right: 15),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.grey, offset: Offset(1, 1), spreadRadius: 1)
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              // color: Colors.amber,
              padding: EdgeInsets.symmetric(horizontal: 30),
              // color: Colors.blue,
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // color: Colors.amber,
                    child: Row(
                      children: [
                        Text(
                          "CHAPTER 1 :",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Money",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Text("Life is a journey"),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          )
        ],
      ),
    );
  }
}
