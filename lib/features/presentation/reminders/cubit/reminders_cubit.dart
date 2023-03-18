import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'reminders_state.dart';

class RemindersCubit extends Cubit<RemindersState> {
  RemindersCubit() : super(RemindersInitial());
}
