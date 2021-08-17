import 'package:demo_app/view/common/appTextStyle.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RawMaterialBtn extends StatelessWidget {
  RawMaterialBtn({@required this.onPressed , this.name});
  final GestureTapCallback onPressed;
  final String name;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.green,
      splashColor: Colors.greenAccent,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              Icons.face,
              color: Colors.amber,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              name,
              maxLines: 1,
              style: AppTextStyle.text2,
            ),
          ],
        ),
      ),
      onPressed: onPressed,
      shape: const StadiumBorder(),
    );
  }
}

class OutlineBtn extends StatelessWidget {
  OutlineBtn({@required this.onPressed, this.name});
  final GestureTapCallback onPressed;
  final String name;

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      hoverColor: Colors.red,
      onPressed: onPressed,
      child: Text(
        name,
        maxLines: 1,
        style: AppTextStyle.text2,
      ),
    );
  }
}

class ElevatedBtn extends StatelessWidget {
  ElevatedBtn({@required this.onPressed, this.name});
  final GestureTapCallback onPressed;
  final String name;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.brown),
          shadowColor: MaterialStateProperty.all<Color>(Colors.black)),
      onPressed: onPressed,
      child: Text(
        name,
        maxLines: 1,
        style: AppTextStyle.text2,
      ),
    );
  }
}
