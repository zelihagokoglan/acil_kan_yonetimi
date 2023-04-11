import 'package:bagis_cesitleri/Profil_aray%C3%BCz.dart';
import 'package:bagis_cesitleri/gizlilik.dart';
import 'package:bagis_cesitleri/kullanim%20kosullari.dart';
import 'package:flutter/material.dart';

class Kayit_Sayfasi extends StatefulWidget {
  const Kayit_Sayfasi({Key? key}) : super(key: key);

  @override
  State<Kayit_Sayfasi> createState() => _Kayit_SayfasiState();
}


class _Kayit_SayfasiState extends State<Kayit_Sayfasi> {
  bool? kullanimdurum = false;
  bool? gizlilikurum = false;


  
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      backgroundColor: Color(0xffFFE1E1),



      appBar: AppBar(
        title: Text("Kayıt", style: TextStyle(fontSize:ekranGenisligi/20),),
        backgroundColor: Color(0xffFF0000),
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [


              SizedBox(
                height: ekranYuksekligi/7,
              ),


              Padding(
                padding:  EdgeInsets.only( bottom: ekranYuksekligi/100, top: ekranYuksekligi/900 ),
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
                padding:  EdgeInsets.only(bottom: ekranYuksekligi/100, top: ekranYuksekligi/200),
                child: TextField(
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

              Padding(
                padding:  EdgeInsets.only(bottom:ekranYuksekligi/30, top:ekranYuksekligi/200),
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

              CheckboxListTile(
                title: Text("Kullanım Koşulları"),
                value: kullanimdurum,

                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (bool? veri){
                  print("kullanım koşulları seçildi: $veri");
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Kullanim_Kosullari()));
                    kullanimdurum = veri;
                  });
                },
              ),
              CheckboxListTile(
                title: Text("Gizlilik"),
                value: gizlilikurum,

                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (bool? veri){
                  print("gizlilik seçildi: $veri");
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Gizlilik()));
                    gizlilikurum = veri;
                  });
                },
              ),


              Padding(
                padding:  EdgeInsets.only(top:ekranYuksekligi/5),
                child: SizedBox(
                  width: ekranGenisligi/1.2,
                  height: ekranYuksekligi/20,
                  child: ElevatedButton(
                    child: Text("KAYIT OL",style: TextStyle(fontSize:ekranYuksekligi/40 ),),
                    style: ElevatedButton.styleFrom(
                      primary:Color(0xffFF0000),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Profil()));
                      print("Kayıt yapıldı.");
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
