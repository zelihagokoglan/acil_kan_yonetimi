import 'package:bagis_cesitleri/kay%C4%B1t%20sayfas%C4%B1.dart';
import 'package:flutter/material.dart';

class Kullanim_Kosullari extends StatefulWidget {
  const Kullanim_Kosullari({Key? key}) : super(key: key);

  @override
  State<Kullanim_Kosullari> createState() => _Kullanim_KosullariState();
}

class _Kullanim_KosullariState extends State<Kullanim_Kosullari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kullanım Koşulları"),
      ),
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Image.asset("resimler/background4.jpeg"),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child:
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Text("KULLANIM KOŞULLARI",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",style: TextStyle(fontSize: 20),),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 60.0),
                  child: Container(
                    width: 260,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          )
                      ),
                      child:
                      Text("OKUDUM, ONAYLIYORUM",style: TextStyle(color: Colors.white,fontSize: 16)),
                      onPressed: (){
                       // Navigator.push(context, MaterialPageRoute(builder: (context) => Kayit_Sayfasi()));
                        print("Onaylandı");
                      },),
                  ),
                ),
              ),
            ],
          )
        ],
      ),

    );
  }
}
