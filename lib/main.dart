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
      home:  Bagis_Cesitleri(),
    );
  }
}

class Bagis_Cesitleri extends StatefulWidget {


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

                  /*Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            width: 100,
                            height: 90,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: ElevatedButton(
                                onPressed: (){
                                  print("Profil Sayfasına gidildi.");
                                },
                                child:Icon(
                                  Icons.account_circle,
                                  color: Colors.black,
                                  size: 50,
                                ),
                                style: ElevatedButton.styleFrom(
                                  shadowColor: Colors.black,
                                   elevation: 9,
                                   primary:Color(0xffE8C4BE),
                                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                ),
                              ),
                            ),
                          ),
                          Text("Profil",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            width: 100,
                            height: 90,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                              child: ElevatedButton(
                                onPressed: (){
                                  print("Profil Sayfasına gidildi.");
                                },
                                child:Icon(
                                  Icons.water_drop,
                                  color: Colors.black,
                                  size: 50,
                                ),
                                style: ElevatedButton.styleFrom(
                                    shadowColor: Colors.black,
                                    elevation: 9,
                                    primary:Color(0xffE8C4BE),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                                ),
                              ),
                            ),
                          ),
                          Text("Bağışlar",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            width: 100,
                            height: 90,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                              child: ElevatedButton(
                                onPressed: (){
                                  print("Profil Sayfasına gidildi.");
                                },
                                child:Icon(
                                  Icons.gps_fixed,
                                  color: Colors.black,
                                  size: 50,
                                ),
                                style: ElevatedButton.styleFrom(
                                    shadowColor: Colors.black,
                                    elevation: 9,
                                    primary:Color(0xffE8C4BE),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                                ),
                              ),
                            ),
                          ),
                          Text("Konum",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
