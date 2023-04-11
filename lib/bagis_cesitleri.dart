import 'package:bagis_cesitleri/Profil_aray%C3%BCz.dart';
import 'package:bagis_cesitleri/konum_bilgisi.dart';
import 'package:flutter/material.dart';

class Bagis_Cesitleri extends StatefulWidget {
  const Bagis_Cesitleri({Key? key}) : super(key: key);

  @override
  State<Bagis_Cesitleri> createState() => _Bagis_CesitleriState();
}

class _Bagis_CesitleriState extends State<Bagis_Cesitleri> {
  @override
  Widget build(BuildContext context) {


    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              tooltip: "Bilgi",
              icon: Icon(Icons.info_outline),
              onPressed: (){
                print("Bilgi alma işlemine tıklandı.");
              },
            ),
          ],
          title: Text("Bağış Çeşitleri"),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.account_circle),text: ("Profil"),
              ),
              Tab(icon: Icon(Icons.water_drop),text: ("Bağış"),
              ),
              Tab(icon: Icon(Icons.gps_fixed),text: ("Konum"),
              ),
            ],
          ),
        ),

        body: Stack(
          children: [
            Positioned(
              right: 0,
              left: 0,
              bottom: 0,
              child: Image.asset("resimler/background.jpg"),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 12.0),
                              child: ElevatedButton(
                                onPressed: (){
                                  print("Kan bağışına tıklandı");
                                },
                                child: Container(
                                  width: 90,
                                  height: 90,
                                  child: Image.asset("resimler/kan.png"),
                                ),

                                style: ElevatedButton.styleFrom(
                                    primary:Colors.white,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                                ),
                              ),
                            ),
                          ),
                          Text("Kan",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: ElevatedButton(
                                onPressed: (){
                                  print("Trombosit bağışına tıklandı");
                                },
                                child: Container(
                                  width: 90,
                                  height: 90,
                                  child: Image.asset("resimler/trombosit.png"),
                                ),

                                style: ElevatedButton.styleFrom(
                                    primary:Colors.white,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                                ),
                              ),
                            ),
                          ),
                          Text("Trombosit",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 12.0),
                              child: ElevatedButton(
                                onPressed: (){
                                  print("İnmun bağışına tıklandı");
                                },
                                child: Container(
                                  width: 90,
                                  height: 90,
                                  child: Image.asset("resimler/inmun.png"),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary:Colors.white,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                                ),
                              ),
                            ),
                          ),
                          Text("İnmun",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: ElevatedButton(
                                onPressed: (){
                                  print("Kök Hücre bağışına tıklandı");
                                },
                                child: Container(
                                  width: 90,
                                  height: 90,
                                  child: Image.asset("resimler/kok_hucre.png"),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary:Colors.white,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                                ),
                              ),
                            ),
                          ),
                          Text("Kök Hücre",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}
