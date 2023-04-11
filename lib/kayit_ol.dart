import 'package:bagis_cesitleri/ki%C5%9Fisel_bilgiler.dart';
import 'package:bagis_cesitleri/kullanim%20kosullari.dart';
import 'package:bagis_cesitleri/yard%C4%B1m.dart';
import 'package:bagis_cesitleri/yasal_uyarilar.dart';
import 'package:flutter/material.dart';

class Kaydol extends StatefulWidget {
  const Kaydol({Key? key}) : super(key: key);

  @override
  State<Kaydol> createState() => _KaydolState();
}

class _KaydolState extends State<Kaydol> {
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

              Text("ACİL KAN YÖNETİM SİSTEMİ", style: TextStyle(fontSize:ekranGenisligi/15 ),),



              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:  EdgeInsets.all(ekranYuksekligi/30),
                    child: SizedBox(
                      width: ekranGenisligi/2.75,
                      height: ekranYuksekligi/15,
                      child: ElevatedButton(
                        child: Text("Kayıt OL",style: TextStyle(fontSize:ekranYuksekligi/55 ),),
                        style: ElevatedButton.styleFrom(
                          primary:Color(0xffF6C8C4),
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Yasal_Uyarilar()));

                        },

                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding:  EdgeInsets.all(ekranYuksekligi/100),
                child: Text("Uygulamamıza kayıt olarak bağışlayacağınız her bir ünite kan için teşekkür ederiz. Kayıt Ol butonuna tıklayarak yasal uyarılar sayfasına yönlendirileceksiniz. ", style: TextStyle(fontSize:ekranGenisligi/27 ),),
              ),


              GestureDetector(
                onTap: (){  //   tıklama özelliği
                  print("Yardım seçildi.");
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Yardim()));

                },
                child: Text("Yardım",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: ekranYuksekligi/40,
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){  //   tıklama özelliği
                  print("Kullanım Koşulları seçildi.");
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Kullanim_Kosullari()));

                },
                child: Text("Kullanım Koşulları",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: ekranYuksekligi/40,
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
