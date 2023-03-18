import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit() : super(SigninInitial());
}
