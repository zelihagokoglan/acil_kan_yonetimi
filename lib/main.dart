import 'package:bagis_cesitleri/Profil_aray%C3%BCz.dart';
import 'package:bagis_cesitleri/kayit_ol.dart';
import 'package:bagis_cesitleri/kullanim%20kosullari.dart';
import 'package:bagis_cesitleri/sifremi_unuttum.dart';
import 'package:bagis_cesitleri/sss.dart';
import 'package:bagis_cesitleri/yard%C4%B1m.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home:  Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {


  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {


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
                      borderRadius: BorderRadius.all(Radius.circular(20.0),
                      ),
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
                        child: Text("GİRİŞ YAP",style: TextStyle(fontSize:ekranYuksekligi/40),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary:Color(0xffF6C8C4),
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Profil()));
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Kaydol()));
                        },
                      ),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: (){  //   tıklama özelliği
                  print("sss seçildi.");
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SSS()));

                },
                child: Text("SSS",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: ekranYuksekligi/45,
                  ),
                ),
              ),

              GestureDetector(
                onTap: (){  //   tıklama özelliği
                  print("şifremi unuttum seçildi.");
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Sifremi_unuttum()));

                },
                child: Text("Şifremi Unuttum",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: ekranYuksekligi/45,
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
