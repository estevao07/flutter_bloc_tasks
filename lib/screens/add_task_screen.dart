import 'package:flutter/material.dart';

import 'package:flutter_bloc_tasks/blocs/bloc_exports.dart';
import 'package:flutter_bloc_tasks/models/task.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();

    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Text(
            'Add Tasks',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            autofocus: true,
            controller: titleController,
            decoration: const InputDecoration(
              label: Text('Title'),
              border: OutlineInputBorder(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {
                  var task = Task(title: titleController.text);
                  context.read<TasksBloc>().add(AddTask(task: task));

                  Navigator.pop(context);
                },
                child: const Text('Add'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
