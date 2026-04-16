import 'package:flutter/material.dart';

class EditAndShareProfileButtons extends StatelessWidget {
  const EditAndShareProfileButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: ElevatedButton( 
          onPressed: () {},
          child: Text(
            'Edit Profile',
            style: TextStyle(color: Colors.black),
          ),
        )),
        SizedBox(width: 10),
        Expanded(
            child: ElevatedButton(
          onPressed: () {},
          child: Text(
            'Share profile',
            style: TextStyle(color: Colors.black),
          ),
        )),
      ],
    );
  }
}
