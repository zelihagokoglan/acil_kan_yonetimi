import 'package:bagis_cesitleri/sifreyi_yenile.dart';
import 'package:flutter/material.dart';

class Sifremi_unuttum extends StatefulWidget {
  const Sifremi_unuttum({Key? key}) : super(key: key);

  @override
  State<Sifremi_unuttum> createState() => _Sifremi_unuttumState();
}



class _Sifremi_unuttumState extends State<Sifremi_unuttum> {
  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;



    return Scaffold(

      appBar: AppBar(
        title: Text("Şifremi Unuttum"),

      ),


      backgroundColor:  Color(0xffFFE1E1),

      body: Column(
        children: [

          Padding(
            padding:  EdgeInsets.all(ekranYuksekligi/30),
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
            padding:  EdgeInsets.all(ekranYuksekligi/30),
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



          Padding(
            padding:  EdgeInsets.only(top: ekranYuksekligi/4,bottom :ekranYuksekligi/60),
            child: SizedBox(
              width: ekranGenisligi/1.2,
              height: ekranYuksekligi/15,
              child: ElevatedButton(
                child: Text("İleri",style: TextStyle(fontSize:ekranYuksekligi/40 ),),
                style: ElevatedButton.styleFrom(
                  primary:Color(0xffFF0000),
                ),
                onPressed: (){
                  print("İleri.");
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Sifreyi_Yenile()));
                },

              ),
            ),
          ),

          Text("Yardım ?"),
        ],
      ),

    );
  }
}
