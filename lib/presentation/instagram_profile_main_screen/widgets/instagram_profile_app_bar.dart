import 'package:flutter/material.dart';

class InstagramProfileAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const InstagramProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('li.__di'),
      centerTitle: true,
      leading: Icon(Icons.add),
      actions: [Icon(Icons.menu)],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
