import 'package:flutter/material.dart';

class Kayit_Ol extends StatefulWidget {
  const Kayit_Ol({Key? key}) : super(key: key);

  @override
  State<Kayit_Ol> createState() => _Kayit_OlState();
}

class _Kayit_OlState extends State<Kayit_Ol> {
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
                children: [

                  Padding(
                    padding:  EdgeInsets.all(ekranYuksekligi/30),
                    child: SizedBox(
                      width: ekranGenisligi/2.75,
                      height: ekranYuksekligi/15,
                      child: ElevatedButton(
                        child: Text("GİRİŞ YAP",style: TextStyle(fontSize:ekranYuksekligi/55 ),),
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
                        child: Text("Kayıt OL",style: TextStyle(fontSize:ekranYuksekligi/55 ),),
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

              Padding(
                padding:  EdgeInsets.all(ekranYuksekligi/100),
                child: Text("Uygulamamıza kayıt olarak bağışlayacağınız her bir ünite kan için teşekkür ederiz. Kayıt Ol butonuna tıklayarak yasal uyarılar sayfasına yönlendirileceksiniz. ", style: TextStyle(fontSize:ekranGenisligi/27 ),),
              ),


              GestureDetector(
                onTap: (){  //   tıklama özelliği
                  print("Yardım seçildi.");

                },
                child: Text("Yardım",
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
