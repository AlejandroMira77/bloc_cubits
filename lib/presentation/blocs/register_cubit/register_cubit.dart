import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

import 'package:bloc_cubits/infrastructure/inputs/inputs.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterFormState> {
  RegisterCubit() : super(const RegisterFormState());

  void onSubmit() {
    print('Cubit Submit: $state');
  }

  void usernameChanged(String value) {
    final username = Username.dirty(value: value);
    emit(
      state.copyWith(
        username: username,
        isvalid: Formz.validate([username])
      )
    );
  }

  void emailChanged(String value) {
    emit(
      state.copyWith(
        email: value
      )
    );
  }

  void passwordChanged(String value) {
    emit(
      state.copyWith(
        password: value
      )
    );
  }
}
