import 'package:flutter/material.dart';

class Continue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var expanded = Expanded(child: Container(child: Text("Chapter 7")));
    return Container(
      margin: EdgeInsets.all(20),
      height: 110,
      width: 220,
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
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                width: 200,
                height: 5,
                margin: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(30))),
              ),
            ),
            bottom: 0,
            left: 0,
          ),
          Positioned(
            child: Container(
              // color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    children: [
                      Text(
                        "sarthak singh",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  Text(
                    "author",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            left: 20,
            top: 20,
          ),
          Positioned(
            top: 70,
            left: 10,
            child: Container(
              width: 200,
              alignment: Alignment.centerRight,
              child: Text(
                "CHAPTER 7",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          Positioned(
            right: 20,
            top: 20,
            child: Container(
              height: 70,
              width: 50,
              color: Colors.red,
              child: Image.asset("images/cover.jpg"),
            ),
          ),
        ],
      ),
    );
  }
}
