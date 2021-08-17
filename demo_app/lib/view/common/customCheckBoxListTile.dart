import 'package:flutter/material.dart';

class CustomCheckBoxListTile extends StatefulWidget {
  @override
  _CustomCheckBoxListTileState createState() => _CustomCheckBoxListTileState();
}

class _CustomCheckBoxListTileState extends State<CustomCheckBoxListTile> {

  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 400,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.greenAccent),
              borderRadius: BorderRadius.circular(20),
            ), //BoxDecoration

            /** CheckboxListTile Widget **/
            child: CheckboxListTile(
              title: const Text('GeeksforGeeks'),
              subtitle: const Text('A computer science portal for geeks.'),
              secondary: const Icon(Icons.code),
              autofocus: false,
              activeColor: Colors.teal,
              checkColor: Colors.white,
              selected: _value,
              value: _value,
              onChanged: (bool value) {
                setState(() {
                  _value = value;
                });
              },
            ), //CheckboxListTile
          ), //Container
        ), //Padding
      ), //Center
    ); //SizedBox
  }
}
