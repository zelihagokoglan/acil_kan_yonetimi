import 'package:bagis_cesitleri/gizlilik.dart';
import 'package:bagis_cesitleri/sifreyi_yenile.dart';
import 'package:bagis_cesitleri/yard%C4%B1m.dart';
import 'package:flutter/material.dart';

class Ayarlar extends StatefulWidget {
  const Ayarlar({Key? key}) : super(key: key);

  @override
  State<Ayarlar> createState() => _AyarlarState();
}

class _AyarlarState extends State<Ayarlar> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      backgroundColor: Color(0xffFFE1E1),

      appBar: AppBar(
        title: Text("Ayarlar", style: TextStyle(fontSize:ekranGenisligi/20),),
        backgroundColor: Color(0xffFF0000),

      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


              Padding(
                padding:  EdgeInsets.all(5.0),
                child: SizedBox(
                  width: ekranGenisligi/1.2,
                  height: ekranYuksekligi/20,
                  child: ElevatedButton(
                    child: Text("Arkadaşlarını Davet Et",style: TextStyle(fontSize:ekranYuksekligi/40 ,color: Colors.black),),
                    style: ElevatedButton.styleFrom(
                      primary:Color(0xffffffff),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    ),
                    onPressed: (){

                    },
                  ),
                ),
              ),

              Padding(
                padding:  EdgeInsets.all(5.0),
                child: SizedBox(
                  width: ekranGenisligi/1.2,
                  height: ekranYuksekligi/20,
                  child: ElevatedButton(
                    child: Text("Bildirimler",style: TextStyle(fontSize:ekranYuksekligi/40 ,color: Colors.black),),
                    style: ElevatedButton.styleFrom(
                      primary:Color(0xffffffff),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    ),
                    onPressed: (){

                    },
                  ),
                ),
              ),



              Padding(
                padding:  EdgeInsets.all(5.0),
                child: SizedBox(
                  width: ekranGenisligi/1.2,
                  height: ekranYuksekligi/20,
                  child: ElevatedButton(
                    child: Text("Gizlilik",style: TextStyle(fontSize:ekranYuksekligi/40 ,color: Colors.black),),
                    style: ElevatedButton.styleFrom(
                      primary:Color(0xffffffff),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Gizlilik()));

                    },
                  ),
                ),
              ),



              Padding(
                padding:  EdgeInsets.all(5.0),
                child: SizedBox(
                  width: ekranGenisligi/1.2,
                  height: ekranYuksekligi/20,
                  child: ElevatedButton(
                    child: Text("Şifre Yenile",style: TextStyle(fontSize:ekranYuksekligi/40, color: Colors.black ),),
                    style: ElevatedButton.styleFrom(
                      primary:Color(0xffffffff),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Sifreyi_Yenile()));
                    },
                  ),
                ),
              ),



              Padding(
                padding:  EdgeInsets.all(5.0),
                child: SizedBox(
                  width: ekranGenisligi/1.2,
                  height: ekranYuksekligi/20,
                  child: ElevatedButton(
                    child: Text("Yardım",style: TextStyle(fontSize:ekranYuksekligi/40, color: Colors.black ),),
                    style: ElevatedButton.styleFrom(
                      primary:Color(0xffffffff),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Yardim()));
                    },
                  ),
                ),
              ),

            ],
          ),
        ),
      ),

    );

  }
}
