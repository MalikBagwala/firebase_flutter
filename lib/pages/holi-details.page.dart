import "package:flutter/material.dart";
import 'package:flutter_firebase/models/holi.model.dart';

class HoliDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Holi holiArgs = ModalRoute.of(context).settings.arguments;
    print(holiArgs);
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.description),
        title: Text("Holi Details Page"),
      ),
      body: Center(
        child: Text(
          holiArgs.description,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.blue.shade800,
            fontSize: 32.0,
          ),
        ),
      ),
    );
  }
}
