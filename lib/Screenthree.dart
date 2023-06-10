import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class Pagethree extends StatefulWidget {
  const Pagethree({super.key});

  @override
  State<Pagethree> createState() => _PagethreeState();
}

class _PagethreeState extends State<Pagethree> {
  String url1 = "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3";
  String url2 = "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3";
  String url3 = "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3";

  bool audio1 = false;
  bool audio2 = false;
  bool audio3 = false;

  final player1 = AudioPlayer();
  final player2 = AudioPlayer();
  final player3 = AudioPlayer();

  fun1() async {
    await player1.setUrl(url1);
  }

  fun2() async {
    await player2.setUrl(url2);
  }

  fun3() async {
    await player3.setUrl(url3);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fun1();
    fun2();
    fun3();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    player1.dispose();
    player2.dispose();
    player3.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Audio  File Task"),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.music_note),
            title: Text("Audio 1"),
            trailing: IconButton(
                onPressed: () {
                  setState(() {
                    if (audio1) {
                      player1.pause();
                      audio1 = false;
                    } else {
                      audio1 = true;

                      player1.play();
                    }
                  });
                },
                icon: Icon(audio1 == true ? Icons.pause : Icons.play_arrow)),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(Icons.music_note),
            title: Text("Audio 2"),
            trailing: IconButton(
                onPressed: () {
                  setState(() {
                    if (audio2) {
                      audio2 = false;
                      player2.pause();
                    } else {
                      player2.play();
                      audio2 = true;
                    }
                  });
                },
                icon: Icon(audio2 == true ? Icons.pause : Icons.play_arrow)),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(Icons.music_note),
            title: Text("Audio 3"),
            trailing: IconButton(
                onPressed: () {
                  setState(() {
                    if (audio3) {
                      player3.pause();
                      audio3 = false;
                    } else {
                      player3.play();
                      audio3 = true;
                    }
                  });
                },
                icon: Icon(audio3 == true ? Icons.pause : Icons.play_arrow)),
          ),
        ],
      ),
    );
  }
}
