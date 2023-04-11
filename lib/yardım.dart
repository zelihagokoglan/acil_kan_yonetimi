import 'package:flutter/material.dart';

class Yardim extends StatefulWidget {
  const Yardim({Key? key}) : super(key: key);

  @override
  State<Yardim> createState() => _YardimState();
}

class _YardimState extends State<Yardim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yardım"),
      ),
    );
  }
}
