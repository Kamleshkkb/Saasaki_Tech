import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  myListViewThird(String title, String subtitle) {
    return Container(
      child: ListTile(
        leading: Container(
          height: double.infinity,
          width: 70,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(10)),
        ),
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(color: Colors.white30),
        ),
        trailing: IconButton(
          color: Colors.white,
          icon: Icon(Icons.favorite_border),
          onPressed: () {},
        ),
      ),
    );
  }

  myListViewSecond(String s, bool c) {
    return Container(
      height: 50,
      child: TextButton(
          onPressed: () {},
          child: Container(
              color: c == true ? Color(0Xff2E288C) : Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Text(
                  s,
                  style: TextStyle(color: Colors.white),
                )),
              ))),
    );
  }

  myListViewFirst(String title, String subtitle) {
    return Container(
      height: 230,
      width: 230,
      child: Stack(
        children: [
          Container(
            height: 230,
            width: 230,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.red),
          ),
          Positioned(
              left: 150,
              child: IconButton(
                color: Colors.white,
                icon: Icon(Icons.more_horiz),
                onPressed: () {},
              )),
          Positioned(
              top: 135,
              left: 10,
              child: Container(
                height: 75,
                width: 200,
                decoration: BoxDecoration(
                    color: Color(0Xff2E288C),
                    borderRadius: BorderRadius.circular(20)),
                child: ListTile(
                  title: Text(
                    "The dark side",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  subtitle: Text(
                    "Muse Simulation Theory",
                    style: TextStyle(color: Colors.white30),
                  ),
                  trailing: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        color: Colors.black,
                        icon: Icon(Icons.play_arrow),
                        onPressed: () {},
                      )),
                ),
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Container(
            height: double.infinity, color: Color(0Xff26283B), child: Drawer()),
        backgroundColor: Color(0Xff26283B),
        appBar: AppBar(
          title: Container(
              color: Color(0Xff26283B),
              height: 50,
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                    hintText: " Search",
                    hintStyle: TextStyle(color: Colors.white30),
                    border: OutlineInputBorder()),
              )),
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Trending right now",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white),
                  ),
                ),
                Container(
                    height: 230,
                    width: double.infinity,
                    child: ListView(
                        shrinkWrap: true,
                        addAutomaticKeepAlives: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          myListViewFirst(
                              "the dark side", "Muse Simulation Theory"),
                          SizedBox(
                            width: 10,
                          ),
                          myListViewFirst(
                              "the dark side", "Muse Simulation Theory"),
                        ])),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      myListViewSecond("Trending right now", true),
                      myListViewSecond("Hip Hop", false),
                      myListViewSecond("Rock", false),
                      myListViewSecond("Electro", false),
                      myListViewSecond("Electro", false),
                    ],
                  ),
                ),
                ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: ScrollPhysics(),
                  children: [
                    myListViewThird(
                        "I am Good (Blue)", "David Quetta & Bebe Rexha"),
                    myListViewThird("Under the influence", "Chris Brown"),
                    myListViewThird("Forget Me", "Lewis Capaldi"),
                    myListViewThird("Forget Me", "Lewis Capaldi"),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
