import 'package:flutter/material.dart';

import 'package:todo_list/widgets/tasks_tile.dart';
//import 'package:todo_list/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/task_data.dart';
class TasksList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskdata, child){
        return  ListView.builder(itemBuilder: (context,index){
          final task = taskdata.tasks[index];
        return TaskTile(taskTitle:task.taskName,
        isChecked: task.isDone ,
        checkBoxCallBack: (bool checkBoxState){
          taskdata.updateTask(task);
        },
        longPressCallBack: (){
          taskdata.deleteTask(task);
        },);
        },
        itemCount: taskdata.taskCount,
        );
      },

    );
  }
}
