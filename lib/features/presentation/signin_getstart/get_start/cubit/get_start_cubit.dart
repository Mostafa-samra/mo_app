import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'get_start_state.dart';

class GetStartCubit extends Cubit<GetStartState> {
  GetStartCubit() : super(GetStartInitial());
}
