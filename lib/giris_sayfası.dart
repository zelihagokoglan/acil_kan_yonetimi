import 'package:flutter/material.dart';

class Giris_Sayfasi extends StatefulWidget {
  const Giris_Sayfasi({Key? key}) : super(key: key);

  @override
  State<Giris_Sayfasi> createState() => _Giris_SayfasiState();
}

class _Giris_SayfasiState extends State<Giris_Sayfasi> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      backgroundColor: Color(0xffFFE1E1),


      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom:ekranYuksekligi/20),
                child: SizedBox(
                  width: ekranGenisligi/2,
                  child: Image.asset("resimler/uygulama_logo.jpeg"),
                ),
              ),

              Text("GİRİŞ YAP", style: TextStyle(fontSize:ekranGenisligi/15 ),),


              Padding(
                padding:  EdgeInsets.all(ekranYuksekligi/50),
                child: TextField(
                  decoration: InputDecoration(
                    hintText:  "Email",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                  ),
                ),
              ),



              Padding(
                padding:  EdgeInsets.all(ekranYuksekligi/50),
                child: TextField(
                  obscureText: true ,
                  decoration: InputDecoration(
                    hintText:  "Şifre",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                  ),
                ),
              ),

              Row(
                children: [

                  Padding(
                    padding:  EdgeInsets.all(ekranYuksekligi/30),
                    child: SizedBox(
                      width: ekranGenisligi/2.75,
                      height: ekranYuksekligi/15,
                      child: ElevatedButton(
                        child: Text("GİRİŞ YAP",style: TextStyle(fontSize:ekranYuksekligi/40 ),),
                        style: ElevatedButton.styleFrom(
                          primary:Color(0xffF6C8C4),
                        ),
                        onPressed: (){

                        },


                      ),
                    ),
                  ),

                  Padding(
                    padding:  EdgeInsets.all(ekranYuksekligi/30),
                    child: SizedBox(
                      width: ekranGenisligi/2.75,
                      height: ekranYuksekligi/15,
                      child: ElevatedButton(
                        child: Text("Kayıt OL",style: TextStyle(fontSize:ekranYuksekligi/40 ),),
                        style: ElevatedButton.styleFrom(
                          primary:Color(0xffF6C8C4),
                        ),
                        onPressed: (){

                        },

                      ),
                    ),
                  ),


                ],
              ),

              GestureDetector(
                onTap: (){  //   tıklama özelliği
                  print("Yardım seçildi.");

                },
                child: Text("Yardım",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: ekranYuksekligi/30,
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

