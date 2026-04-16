part of 'insta_profile_bloc.dart';

abstract  class InstaProfileEvent {}

class FetchUserDataEvent extends InstaProfileEvent{}

class UpdateProfileNameEvent extends InstaProfileEvent{}

class UpdateProfileLogoEvent extends InstaProfileEvent{}