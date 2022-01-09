import 'package:bloc/bloc.dart';
import 'package:bloc_tutorial/dto/create_user_dto.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

import '../main.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<CreateUserEvent>((event, emit) async {
      emit(UserLoading());
      try {
        var url = "https://chopwebvendor.herokuapp.com/create/user";
        var body = createUserDto.toJson();
        final response = await http.post(Uri.parse(url), body: body);
        print("response ${response.reasonPhrase}");
        emit(UserSuccess(message: response.reasonPhrase));
      } catch (e) {
        emit(UserFailure(errorMessage: e.toString()));
      }
    });
  }
}
