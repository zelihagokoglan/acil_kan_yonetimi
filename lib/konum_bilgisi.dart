import 'package:flutter/material.dart';

class KonumBilgisi extends StatefulWidget {
  const KonumBilgisi({Key? key}) : super(key: key);

  @override
  State<KonumBilgisi> createState() => _KonumBilgisiState();
}

class _KonumBilgisiState extends State<KonumBilgisi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kan Bağış Noktaları"),
      ),
      body: Stack(
        children: [
          Positioned(
              right: 0,
              left: 0,
              bottom: 0,
              child: Image.asset("resimler/background.jpg")
          ),
          Align(
            alignment: Alignment.center,
              child: Text("Türk Kızılay-Trabzon Şubesi",style: TextStyle(fontSize: 16)),
          ),
          Align(
            alignment: Alignment.center,
              child: Text("Türk Kızılay-Ortahisar Şubesi",style: TextStyle(fontSize: 16)),
          ),
          Align(
            alignment: Alignment.center,
              child: Text("KTÜ Bilgisayar Müh Önü (Otobüs)",style: TextStyle(fontSize: 16)),
          ),
          Align(
            alignment: Alignment.center,
              child: Text("KTÜ YDYO Önü (Otobüs)",style: TextStyle(fontSize: 16)),
          ),
          Align(
            alignment: Alignment.center,
              child: Text("Trabzon Meydan (Otobüs)",style: TextStyle(fontSize: 16),),
          ),
        ],
      ),
    );
  }
}
