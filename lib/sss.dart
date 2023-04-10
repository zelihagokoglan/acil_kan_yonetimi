import 'package:flutter/material.dart';

class SSS extends StatefulWidget {
  const SSS({Key? key}) : super(key: key);

  @override
  State<SSS> createState() => _SSSState();
}

class _SSSState extends State<SSS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SSS"),
      ),
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Image.asset("resimler/background2.jpg"),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child:
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Text("SSS",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
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
        ],
      ),
    );
  }
}
