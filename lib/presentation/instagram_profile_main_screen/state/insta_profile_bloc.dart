import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:instagram_profile/presentation/instagram_profile_main_screen/instagram_profile_main_screen.dart';

part 'insta_profile_event.dart';
part 'insta_profile_state.dart';

class InstaProfileBloc extends Bloc<InstaProfileEvent, InstaProfileState> {
  InstaProfileBloc() : super(InstaProfileState()) {
    on<FetchUserDataEvent>(_fetchUserDataEvent);
  }

  Future<void> _fetchUserDataEvent(
      FetchUserDataEvent event, Emitter<InstaProfileState> emit) async {
    emit(
      InstaProfileState(
        instaData: InstaData(
          postsCount: 10,
          followersCount: 20,
          followingsCount: 30,
        ),
      ),
    );
    await Future.delayed(const Duration(seconds: 5));
    emit(
      InstaProfileState(
        instaData: InstaData(
          postsCount: 20,
          followersCount: 40,
          followingsCount: 60,
        ),
      ),
    );
  }
}
