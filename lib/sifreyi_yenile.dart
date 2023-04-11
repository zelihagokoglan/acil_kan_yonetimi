import 'package:bagis_cesitleri/main.dart';
import 'package:flutter/material.dart';

class Sifreyi_Yenile extends StatefulWidget {
  const Sifreyi_Yenile({Key? key}) : super(key: key);

  @override
  State<Sifreyi_Yenile> createState() => _Sifreyi_YenileState();
}

class _Sifreyi_YenileState extends State<Sifreyi_Yenile> {
  @override
  Widget build(BuildContext context) {


    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;


    return Scaffold(
      appBar: AppBar(
        title: Text("Şifreyi Yenile"),

      ),

      backgroundColor:  Color(0xffFFE1E1),

      body: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding:  EdgeInsets.all(ekranYuksekligi/30),
              child: TextField(
                decoration: InputDecoration(
                  hintText:  "Yeni Şifre",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                ),
              ),
            ),




            Padding(
              padding:  EdgeInsets.all(ekranYuksekligi/30),
              child: TextField(
                decoration: InputDecoration(
                  hintText:  "Şifreyi Tekrarla",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                ),
              ),
            ),



            Padding(
              padding:  EdgeInsets.only(top: ekranYuksekligi/4,bottom :ekranYuksekligi/60),
              child: SizedBox(
                width: ekranGenisligi/1.2,
                height: ekranYuksekligi/15,
                child: ElevatedButton(
                  child: Text("Değişikliği Onayla",style: TextStyle(fontSize:ekranYuksekligi/40 ),),
                  style: ElevatedButton.styleFrom(
                    primary:Color(0xffFF0000),
                  ),
                  onPressed: (){
                    print("Değişikliği Onaylandı");
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa()));
                  },

                ),
              ),
            ),




          ],
        ),
      ),

    );

  }
}
