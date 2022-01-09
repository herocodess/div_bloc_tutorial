part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class CreateUserEvent extends UserEvent {
  final CreateUserDto? createUserDto;

  CreateUserEvent({this.createUserDto});
}

class GetUserEvent extends UserEvent {}
