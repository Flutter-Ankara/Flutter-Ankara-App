import 'package:flutter_ankara_app/blocs/auth/login/login_event.dart';
import 'package:flutter_ankara_app/blocs/auth/login/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<LoginEvent>(
      (event, emit) async {
        mapEventtoState(event, emit);
      },
    );
  }

  Future mapEventtoState(LoginEvent event, Emitter<LoginState> emit) async {
    if (event is LoginEmailChanged) {
      emit(state.copyWith(email: event.email));
    }

    if (event is LoginPasswordChanged) {
      emit(state.copyWith(password: event.password));
    }

    if (event is LoginSubmit) {}
  }
}
