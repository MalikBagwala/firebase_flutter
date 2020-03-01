import "package:flutter/material.dart";
import 'package:flutter_firebase/models/holi.model.dart';

class HoliListTile extends StatelessWidget {
  final Holi holi;
  final Function onTap;

  HoliListTile({this.holi, this.onTap});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.list),
      title: Text(holi.title),
      onTap: () {
        onTap(holi);
      },
    );
  }
}
