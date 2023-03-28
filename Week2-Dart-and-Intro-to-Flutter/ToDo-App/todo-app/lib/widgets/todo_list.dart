import 'package:flutter/material.dart';
import 'package:todo_app/constants/color.dart';

import 'package:todo_app/model/todo.dart';

class Todoitem extends StatelessWidget {
  final Todo td;
  const Todoitem({Key? key, required this.td}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          print("Clicked on Todo Item.");
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        leading: Icon(
          td.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          td.todoText!,
          style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration: td.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {
              print("Clicked on delete button");
            },
          ),
        ),
      ),
    );
  }
}
