import 'package:demo_app/view/common/appTextStyle.dart';
import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.greenAccent,
      title: Text(
        "Ha young",
        style: AppTextStyle.text1,
      ),
      leading: Icon(Icons.account_circle_rounded),
      actions: [

      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(70);
}
