import 'package:flutter/material.dart';

class mapsPage extends StatelessWidget {
  const mapsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tac-Alert"),
      ),
      body: Center(
        child: Text("This is the Maps Page"),
      ),
    );
  }
}
