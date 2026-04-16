import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_profile/presentation/instagram_profile_main_screen/instagram_profile_main_screen.dart';
import 'package:instagram_profile/presentation/instagram_profile_main_screen/state/insta_profile_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => InstaProfileBloc(),
        child: InstagramProfileMainScreen(),
      ),
    );
  }
}
