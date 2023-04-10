import 'package:flutter/material.dart';

class BagisNoktalari extends StatefulWidget {
  const BagisNoktalari({Key? key}) : super(key: key);

  @override
  State<BagisNoktalari> createState() => _BagisNoktalariState();
}

class _BagisNoktalariState extends State<BagisNoktalari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bağış Noktaları"),
      ),
      body: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Image.asset("resimler/background2.jpg"),
          ),
          Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding:  EdgeInsets.only(top: 20.0),
                  child: Text("KTÜ Bilgisayar Müh Önü",style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset("resimler/bil_muh.jpeg"),
            ],
          ),
        ],
      ),
    );
  }
}
