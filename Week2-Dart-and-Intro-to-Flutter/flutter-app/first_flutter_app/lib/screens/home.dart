import 'package:flutter/material.dart';
import 'package:first_flutter_app/constants/color.dart';
import 'package:first_flutter_app/widgets/todo_list.dart';
import 'package:first_flutter_app/model/todo.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  final todos = Todo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: buildappbar(),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: Column(
            children: [
              searchBox(),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50, bottom: 20),
                      child: Text(
                        "ToDo List",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    for (Todo td in todos) Todoitem(),
                  ],
                ),
              )
            ],
          )),
    );
  }

  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: tdBlack,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(color: tdGray),
        ),
      ),
    );
  }

  AppBar buildappbar() {
    return AppBar(
        backgroundColor: tdBGColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.menu,
              color: tdBlack,
              size: 30,
            ),
            Container(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/person.jpg'),
              ),
            )
          ],
        ));
  }
}
