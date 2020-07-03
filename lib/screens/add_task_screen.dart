

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/task.dart';
import 'package:todo_list/models/task_data.dart';
class AddTaskScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(30.0),topLeft: Radius.circular(30.0),)
        ),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
          Text('Add Task',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.lightBlueAccent,

          ),),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText){
              newTaskTitle = newText;
            },
          ),
          FlatButton(child: Text('Add',style: TextStyle(color: Colors.white),),
            onPressed: (){
            //implement the function for adding task to the list
              //final task= Task(taskName: newTaskTitle)
           Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
           Navigator.pop(context);
            },


          color: Colors.lightBlueAccent,),
        ],),
      ),


    );
  }
}
