import 'package:flutter/material.dart';

class InstagramProfilePicture extends StatelessWidget {
  const InstagramProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: CircleAvatar(
        backgroundImage: AssetImage('assets/pictures/profile_picture.webp'),
        radius: 40,
      ),
    );
  }
}
