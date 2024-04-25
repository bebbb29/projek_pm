import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:just_audio/just_audio.dart';

final player = AudioPlayer();


class tugas extends StatefulWidget {
  const tugas({super.key});

  @override
  State<tugas> createState() => _tugasState();
}

class _tugasState extends State<tugas> {
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
                      gantiNama("Aura Fire");
                      await player.setAsset("aset/suara/aura.mp3");
                      await player.play();
                    },
                    child: Image.asset('aset/gambar/aura1.png')
                  )
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      gantiNama("onic esport");
                      await player.setAsset("aset/suara/onic.mp3");
                      await player.play();
                    },
                    child: Image.asset('aset/gambar/onic1.png')
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
                      gantiNama("rrq");
                      await player.setAsset("aset/suara/rrq.mp3");
                      await player.play();
                    },
                    child: Image.asset('aset/gambar/rrq.png')
                  )
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      gantiNama("alter ego");
                      await player.setAsset("aset/suara/ae.mp3");
                      await player.play();
                    },
                    child: Image.asset('aset/gambar/ae.png')
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
                      gantiNama("evos 9lory");
                      await player.setAsset("aset/suara/evos.mp3");
                      await player.play();
                    },
                    child: Image.asset('aset/gambar/evos.png')
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