import 'package:bagis_cesitleri/kay%C4%B1t%20sayfas%C4%B1.dart';
import 'package:flutter/material.dart';

class Kisisel_Bilgiler extends StatefulWidget {
  const Kisisel_Bilgiler({Key? key}) : super(key: key);

  @override
  State<Kisisel_Bilgiler> createState() => _Kisisel_BilgilerState();
}

class _Kisisel_BilgilerState extends State<Kisisel_Bilgiler> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      backgroundColor: Color(0xffFFE1E1),


      appBar: AppBar(
        title: Text("Kişisel Bilgiler", style: TextStyle(fontSize:ekranGenisligi/20),),
        backgroundColor: Color(0xffFF0000),

      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Padding(
                padding: const EdgeInsets.only(top: 12.0,bottom: 12.0),
                child: Text("KİŞİSEL BİLGİLER", style: TextStyle(fontSize:ekranGenisligi/18,fontWeight: FontWeight.bold ),),
              ),


              Padding(
                padding:  EdgeInsets.all(5.0),
                child: Container(
                  height: 40,
                  child: TextField(


                    decoration: InputDecoration(
                      hintText:  "Ad:",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                    ),
                  ),
                ),
              ),


              Padding(
                padding:  EdgeInsets.all(5.0),
                child: Container(
                  height: 40,
                  child: TextField(

                    decoration: InputDecoration(
                      hintText:  "Soyad",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                    ),
                  ),
                ),
              ),


              Padding(
                padding:  EdgeInsets.all(5.0),
                child: Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText:  "TC",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                    ),
                  ),
                ),
              ),


              Padding(
                padding:  EdgeInsets.all(5.0),
                child: Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText:  "Telefon:",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                    ),
                  ),
                ),
              ),


              Padding(
                padding:  EdgeInsets.all(5.0),
                child: Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText:  "Doğum Tarihi:",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                    ),
                  ),
                ),
              ),


              Padding(
                padding:  EdgeInsets.all(5.0),
                child: Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText:  "Kilo(kg):",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                    ),
                  ),
                ),
              ),


              Padding(
                padding:  EdgeInsets.all(5.0),
                child: Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText:  "Boy(cm):",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                    ),
                  ),
                ),
              ),


              Padding(
                padding:  EdgeInsets.all(5.0),
                child: Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText:  "Cinsiyet:",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                    ),
                  ),
                ),
              ),


              Padding(
                padding:  EdgeInsets.all(5.0),
                child: Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText:  "Kan Grubu:",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                    ),
                  ),
                ),
              ),


              Padding(
                padding:  EdgeInsets.all(5.0),
                child: Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText:  "Şehir:",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                    ),
                  ),
                ),
              ),


              Padding(
                padding:  EdgeInsets.all(5.0),
                child: Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText:  "İlçe:",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding:  EdgeInsets.all(5.0),
                child: SizedBox(
                  width: ekranGenisligi/1.2,
                  height: ekranYuksekligi/20,
                  child: ElevatedButton(
                    child: Text("İLERİ",style: TextStyle(fontSize:ekranYuksekligi/40 ),),
                    style: ElevatedButton.styleFrom(
                      primary:Color(0xffFF0000),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    ),
                    onPressed: (){
                      print("Kayıt yapıldı.");
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Kayit_Sayfasi()));
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
