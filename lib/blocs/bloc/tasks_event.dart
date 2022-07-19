part of 'tasks_bloc.dart';

abstract class TasksEvent extends Equatable {
  const TasksEvent();

  @override
  List<Object> get props => [];
}

class AddTask extends TasksEvent {
  final Task task;
  const AddTask({
    required this.task,
  });

  @override
  List<Object> get props => [task];
}

class UpdateTasks extends TasksEvent {
  final Task task;
  const UpdateTasks({
    required this.task,
  });

  @override
  List<Object> get props => [task];
}

class DeleteTasks extends TasksEvent {
  final Task task;
  const DeleteTasks({
    required this.task,
  });

  @override
  List<Object> get props => [task];
}
