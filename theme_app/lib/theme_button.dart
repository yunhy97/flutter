import 'package:flutter/material.dart';
import 'package:theme_app/theme_notifier.dart';
import 'package:provider/provider.dart';

class ThemeButton extends StatelessWidget {

  final ThemeData buttonThemeData;

  ThemeButton({this.buttonThemeData});

  @override
  Widget build(BuildContext context){
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return RawMaterialButton(
        onPressed: () {
          themeNotifier.setTheme(buttonThemeData);
        },
        child: AnimatedSwitcher(
          // 변경사항이 생기면 변경되면서 애니메이션 효과를 줌
          duration: Duration(milliseconds: 400),
          transitionBuilder: (Widget child, Animation<double> animation) => ScaleTransition(
              child: child,
              scale: animation
          ),
          child: _getIcon(themeNotifier),
        ),
        shape: CircleBorder(),
        elevation: 2.0,
        fillColor: buttonThemeData.primaryColor,
        padding: const EdgeInsets.all(15.0),
    );
  }

  Widget _getIcon(ThemeNotifier themeNotifier){
    bool selected = (themeNotifier.getTheme() == buttonThemeData);

    return Container(
      key: Key((selected) ? "ON" : "OFF"),
      child: Icon(
          (selected) ? Icons.done : Icons.close,
          color: buttonThemeData.accentColor,
          size: 20.0,
      ),
    );
  }
}
