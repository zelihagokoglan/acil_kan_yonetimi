import 'package:flutter/material.dart';

class Konum extends StatefulWidget {
  const Konum({Key? key}) : super(key: key);

  @override
  State<Konum> createState() => _KonumState();
}

class _KonumState extends State<Konum> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("konum"),
    );
  }
}
