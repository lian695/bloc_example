part of 'insta_profile_bloc.dart';

class InstaProfileState extends Equatable {
  final InstaData? instaData;
  final bool isLoading;
  const InstaProfileState({
    this.instaData,
    this.isLoading = true,
  });

  @override
  List<Object?> get props => [
        instaData,
        isLoading,
      ];
}
