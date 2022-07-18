import 'package:flutter/material.dart';

class customAppbar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  const customAppbar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
