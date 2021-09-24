import 'package:flutter/material.dart';

class historyPage extends StatelessWidget {
  const historyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tac-Alert"),
      ),
      body: Center(
        child: Text("This is the History Page"),
      ),
    );
  }
}
