import 'package:flutter/material.dart';

import 'package:flutter_bloc_tasks/models/task.dart';
import 'package:flutter_bloc_tasks/screens/tasks_screen.dart';

import 'blocs/bloc_exports.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TasksBloc()
        ..add(
          AddTask(task: Task(title: 'Task1')),
        ),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const TasksScreen(),
      ),
    );
  }
}
