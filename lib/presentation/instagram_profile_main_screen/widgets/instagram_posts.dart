import 'package:flutter/material.dart';

class InstagramPosts extends StatefulWidget {
  const InstagramPosts({super.key});

  @override
  State<InstagramPosts> createState() => _InstagramPostsState();
}

class _InstagramPostsState extends State<InstagramPosts> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 2,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Image.asset('assets/pictures/image1.jpg'),
        Image.asset('assets/pictures/image2.jpg'),
        Image.asset('assets/pictures/image3.jpg'),
      ],
    );
  }
}
