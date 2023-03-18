import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'intro_state.dart';

class IntroCubit extends Cubit<IntroState> {
  IntroCubit() : super(IntroInitial());
}
