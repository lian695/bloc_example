import 'package:flutter/material.dart';
import 'package:instagram_profile/presentation/instagram_profile_main_screen/instagram_profile_main_screen.dart';

class InstagramProfileInfo extends StatelessWidget {
  final InstaData instaData;

  const InstagramProfileInfo({
    super.key,
    required this.instaData,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(
          right: 40,
          top: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(instaData.postsCount.toString(),
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text('posts', style: TextStyle(fontSize: 15)),
              ],
            ),
            Column(
              children: [
                Text(instaData.followersCount.toString(),
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text('followers', style: TextStyle(fontSize: 15)),
              ],
            ),
            Column(
              children: [
                Text(instaData.followingsCount.toString(),
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text('following', style: TextStyle(fontSize: 15)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
