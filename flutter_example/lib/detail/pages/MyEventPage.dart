import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyEventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _value = Provider.of<int>(context);
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('StreamProvider Example'),
            SizedBox(height: 150),
            Text('${_value.toString()}',
                  style: Theme.of(context).textTheme.display1,)
          ],
        ),
      ),
    );
  }
}
