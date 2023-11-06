import 'package:flight_drone/renkler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class Anasayfa extends StatefulWidget{
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var lang = AppLocalizations.of(context)!;

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print(ekranYuksekligi);
    print(ekranGenisligi);

    return Scaffold(
      appBar:AppBar(
        title: Text(lang.yaziBaslik,style: TextStyle(color: yaziRenk1 , fontFamily: "Righteous",fontSize: ekranGenisligi/12),
        ),
        backgroundColor: arkaPlan2,
        centerTitle: true,
      ) ,
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(lang.ozellikBaslik ,style: TextStyle(color: yaziRenk1 , fontSize: ekranGenisligi/15),),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.camera_alt_outlined , color: Colors.white,),
              Column(
                children: [
                  Text(lang.kaliteOzellik ,style: TextStyle(color: yaziRenk2 , fontSize: ekranGenisligi/28),textAlign: TextAlign.center,),
                  Text("4K/60 FPS" ,style: TextStyle(color: yaziRenk1 , fontSize: ekranGenisligi/23),textAlign: TextAlign.center,),
                ],
              ),
              Icon(Icons.flight_land_outlined , color: Colors.white,),
              Column(
                children: [
                  Text(lang.mesafeOzellik ,style: TextStyle(color: yaziRenk2 , fontSize: ekranGenisligi/28,),textAlign: TextAlign.center,),
                  Text("7 Km" ,style: TextStyle(color: yaziRenk1 , fontSize: ekranGenisligi/23),textAlign: TextAlign.center,),
                ],
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.flight_outlined , color: Colors.white,),
              Column(
                children: [
                  Text(lang.ucusOzellik ,style: TextStyle(color: yaziRenk2 , fontSize: ekranGenisligi/28),textAlign: TextAlign.center,),
                  Text(lang.ucusKarsilik ,style: TextStyle(color: yaziRenk1 , fontSize: ekranGenisligi/23),textAlign: TextAlign.center,),
                ],
              ),
              Icon(Icons.videocam , color: Colors.white,),
              Column(
                children: [
                  Text(lang.videoOzellik ,style: TextStyle(color: yaziRenk2 , fontSize: ekranGenisligi/23),),
                  Text("4k Video" ,style: TextStyle(color: yaziRenk1 , fontSize: ekranGenisligi/23),),
                ],
              ),
            ],
          ),
          Image.asset("resimler/diji-phantom4.jpg"),
          TextButton(
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.all(8),
              decoration:BoxDecoration(
                color: sembolRenk,
                borderRadius: BorderRadius.circular(16.0),
              ),

              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.flight, color: Colors.white),
                  SizedBox(width: 8), // İkon ile metin arasına boşluk ekleyebilirsiniz
                  Text(
                    lang.ucusButton,
                    style: TextStyle(
                      color: yaziRenk1,
                      fontSize: ekranGenisligi/18,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      backgroundColor: arkaPlan2,
    );
  }
}



