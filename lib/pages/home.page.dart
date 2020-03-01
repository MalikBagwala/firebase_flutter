import "package:flutter/material.dart";
import 'package:flutter_firebase/components/holi-list.widget.dart';
import 'package:flutter_firebase/models/holi.model.dart';
import 'package:flutter_firebase/routes.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Holi> holiItems = [
    Holi(
      title: "Apply Coconut Oil",
      description: "prevent the skip from drying ",
    ),
    Holi(
      title: "Don't Forget Sunscreen",
      description: "prevent the skin from tanning ",
    ),
    Holi(
      title: "Apply Nail Paint",
      description: "prevent the nail from looks stupid ",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text("Holi App"),
      ),
      body: ListView.builder(
        itemCount: holiItems.length,
        itemBuilder: (context, index) {
          return HoliListTile(
            holi: holiItems[index],
            onTap: (holi) {
              Navigator.pushNamed(
                context,
                Routes.Details,
                arguments: holiItems[index],
              );

              print(holi);
            },
          );
        },
      ),
    );
  }
}
