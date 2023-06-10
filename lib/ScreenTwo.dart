import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  myGridElement(String title, String subtitle, String image) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(30)),
            height: 130,
            width: 170,
          ),
          Container(
            height: 53,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.white30),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0Xff26283B),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        titleSpacing: MediaQuery.of(context).size.width - 100,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              decoration: BoxDecoration(
                  color: Color(0Xff26283B),
                  borderRadius: BorderRadius.circular(8)),
              height: double.infinity,
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_back_ios))),
        ),
        title: Container(
            decoration: BoxDecoration(
                color: Color(0Xff26283B),
                borderRadius: BorderRadius.circular(8)),
            child: Icon(Icons.favorite_border)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Recent favourites",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SingleChildScrollView(
                child: GridView.count(
                  crossAxisCount: 2,
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    myGridElement("Bright Hits",
                        "The most popular and striking music news ", "red"),
                    myGridElement("Millions", "Always never", "blue"),
                    myGridElement("Family tourism", "Always naver", "green"),
                    myGridElement("Millions", "Always never", "blue"),
                    myGridElement("Bright Hits",
                        "The most popular and striking music news ", "red"),
                    myGridElement("Family tourism", "Always naver", "green"),
                    myGridElement("Millions", "Always never", "blue"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
