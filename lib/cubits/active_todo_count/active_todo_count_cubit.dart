// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:todo_cubit/cubits/todo_list/todo_list_cubit.dart';

import '../../models/todo_model.dart';

part 'active_todo_count_state.dart';

class ActiveTodoCountCubit extends Cubit<ActiveTodoCountState> {
  final int initalActiveTodoList;

  ActiveTodoCountCubit({
    required this.initalActiveTodoList,
  }) : super(ActiveTodoCountState(activeTodoCount: initalActiveTodoList));


  void calculateActiveTodoCount(int activeTodoCount){
    emit(state.copyWith(activeTodoCount: activeTodoCount));
  }
 
}
