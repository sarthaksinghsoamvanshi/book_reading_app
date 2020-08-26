import 'package:book_reading_app/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/cover.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "flamin",
                      style: TextStyle(
                          color: Colors.white, fontSize: 50, letterSpacing: 2)),
                  TextSpan(
                    text: "go.",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 50),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (BuildContext context) => HomePage()),
                ),
              },
              child: Container(
                // margin: EdgeInsets.symmetric(horizontal:10),
                width: 180,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.7),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(5, 5),
                        blurRadius: 20,
                        spreadRadius: 2,
                        color: Colors.white)
                  ],
                ),
                height: 45,
                // width: MediaQuery.of(context).size.width,
                child: Text(
                  "start reading",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
