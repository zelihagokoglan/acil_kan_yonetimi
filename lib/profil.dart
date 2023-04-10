import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(




      appBar: AppBar(
        title: Text("Kişisel Bilgiler", style: TextStyle(fontSize:ekranGenisligi/20),),
        backgroundColor: Color(0xffFF0000),
      ),
      body: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            bottom:0,
            child: Container(
              child: Image.asset("resimler/background3.jpeg"),
              width: ekranGenisligi, height: ekranYuksekligi,
            ),
          ),
          Column(


            children: [ Padding(
              padding: EdgeInsets.only(top: ekranYuksekligi/110, bottom: ekranYuksekligi/40 , left: ekranGenisligi/70),
              child: SizedBox(
                width:  ekranGenisligi/2,
                child: Image.asset("resimler/profil.png") ,
              ),
            ),


              Row(
                children: [
                  Container(
                    child: Image.asset("resimler/identity.png"),
                    width: 100,height: 70,
                  ),
                  Container(
                    child: Image.asset("resimler/height.png"),
                    width: 90, height: ekranYuksekligi/9,
                  ),
                  Container(
                    child: Image.asset("resimler/weight.png"),
                    width: 90, height: ekranYuksekligi/9,
                  ),
                  Container(
                    child: Image.asset("resimler/blood.png"),
                    width: 110, height: ekranYuksekligi/9,
                  ),


                ],
              )


            ],
          ),
        ],
      ),

    );

  }
}
