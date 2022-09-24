import 'package:calculator/util/todo_title.dart';
import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

   //list of todo tasks
   List toDoList=[
    ["Make tutorial",false],
    ["100 Push-UP",true],
   ];
   //checkbox was tapped
   void checkBoxChanged(bool? value,int index){
    setState(() {
      toDoList[index][1]=!toDoList[index][1];
    });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade200,
      appBar: AppBar(
        title: Text("TO DO",textAlign: TextAlign.center,),
        
        elevation: 0,
      ),
      body:ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context,index){
          return ToDoTitle(
            taskName: toDoList[index][0], 
            taskCompleted: toDoList[index][1], 
            onChanged: (value)=>checkBoxChanged(value,index),
            ); 
        },
      )
    );
  }
}