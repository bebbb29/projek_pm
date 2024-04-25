import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:just_audio/just_audio.dart';

final player = AudioPlayer();


class tugasthea extends StatefulWidget {
  const tugasthea({super.key});

  @override
  State<tugasthea> createState() => _tugastheaState();
}

class _tugastheaState extends State<tugasthea> {
  String? namaGambar;
  gantiNama(String nama){
    setState(() {
      namaGambar = nama;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gambar"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      gantiNama("choso");
                      await player.setAsset("aset/suara/choso.mp3");
                      await player.play();
                    },
                    child: Image.asset('aset/gambar/Choso.jpeg')
                  )
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      gantiNama("gojo satoru");
                      await player.setAsset("aset/suara/gojo.mp3");
                      await player.play();
                    },
                    child: Image.asset('aset/gambar/gojo.jpeg')
                  )
                ),
              ],
            )
          ),
          Container(
            padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      gantiNama("mahito");
                      await player.setAsset("aset/suara/mahito.mp3");
                      await player.play();
                    },
                    child: Image.asset('aset/gambar/mahito.jpeg')
                  )
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      gantiNama("megumi fushiguro");
                      await player.setAsset("aset/suara/megumi.mp3");
                      await player.play();
                    },
                    child: Image.asset('aset/gambar/megumii.jpeg')
                  )
                ),
              ],
            )
          ),
          Container(
            padding: EdgeInsets.fromLTRB(150, 0, 150, 0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      gantiNama("sukuna ryomen");
                      await player.setAsset("aset/suara/sukuna.mp3");
                      await player.play();
                    },
                    child: Image.asset('aset/gambar/sukuna.jpeg')
                  )
                ),
              ],
            )
          ),
          Text(namaGambar ?? "Klik Salah Satu Gambar")
        ],
      ),
    );
  }
}