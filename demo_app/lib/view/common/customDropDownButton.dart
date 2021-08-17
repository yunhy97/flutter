import 'package:demo_app/view/common/appTextStyle.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: AppTextStyle.text3,
      underline: Container(
        height: 2,
        color: Colors.teal,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      })
          .toList(),
    );
  }
}
