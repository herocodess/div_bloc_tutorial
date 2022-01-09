part of 'user_bloc.dart';

@immutable
abstract class UserState {}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserSuccess extends UserState {
  final String? message;

  UserSuccess({this.message});
}

class UserFailure extends UserState {
  final String? errorMessage;

  UserFailure({this.errorMessage});
}
