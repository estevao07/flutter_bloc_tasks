import 'package:equatable/equatable.dart';

import 'package:flutter_bloc_tasks/blocs/bloc_exports.dart';
import 'package:flutter_bloc_tasks/models/task.dart';

part 'tasks_event.dart';
part 'tasks_state.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  TasksBloc() : super(const TasksState()) {
    on<AddTask>(_onAddTask);
    on<UpdateTasks>(_onUpdateTask);
    on<DeleteTasks>(_onDeleteTask);
  }

  void _onAddTask(AddTask event, Emitter<TasksState> emit) {
    final state = this.state;
    emit(TasksState(
      allTasks: List.from(state.allTasks)..add(event.task),
    ));
  }

  void _onUpdateTask(UpdateTasks event, Emitter<TasksState> emit) {}

  void _onDeleteTask(DeleteTasks event, Emitter<TasksState> emit) {}
}
