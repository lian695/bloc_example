import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_profile/presentation/instagram_profile_main_screen/state/insta_profile_bloc.dart';
import 'package:instagram_profile/presentation/instagram_profile_main_screen/widgets/edit_and_share_profile_buttons.dart';
import 'package:instagram_profile/presentation/instagram_profile_main_screen/widgets/instagram_posts.dart';
import 'package:instagram_profile/presentation/instagram_profile_main_screen/widgets/instagram_profile_app_bar.dart';
import 'package:instagram_profile/presentation/instagram_profile_main_screen/widgets/instagram_profile_info.dart';
import 'package:instagram_profile/presentation/instagram_profile_main_screen/widgets/instagram_profile_picture.dart';
import 'package:shimmer/shimmer.dart';

const InstaData _defaultData =
    InstaData(followersCount: 0, followingsCount: 0, postsCount: 0);

class InstaData {
  final int postsCount;
  final int followersCount;
  final int followingsCount;
  const InstaData({
    required this.postsCount,
    required this.followersCount,
    required this.followingsCount,
  });
}

class InstagramProfileMainScreen extends StatefulWidget {
  const InstagramProfileMainScreen({super.key});

  @override
  State<InstagramProfileMainScreen> createState() =>
      _InstagramProfileMainScreenState();
}

class _InstagramProfileMainScreenState
    extends State<InstagramProfileMainScreen> {
  @override
  void initState() {
    final bloc = context.read<InstaProfileBloc>();
    bloc.add(FetchUserDataEvent());
    super.initState();
  }

  Future<void> loadPictures() async {
    await Future.delayed(Duration(seconds: 4));
  }

  Widget profileShimmer() {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.grey,
      child: Container(
        height: 100,
        width: 200,
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: InstagramProfileAppBar(),
      body: SingleChildScrollView(
        child: BlocBuilder<InstaProfileBloc, InstaProfileState>(
          builder: (context, state) {
            return Column(
              children: [
                Row(
                  children: [
                    InstagramProfilePicture(),
                    InstagramProfileInfo(
                      instaData: state.instaData ?? _defaultData,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: EditAndShareProfileButtons(),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 26),
                  child: Icon(
                    Icons.grid_on_outlined,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: InstagramPosts()),
              ],
            );
          },
        ),
      ),
    );
  }
}
