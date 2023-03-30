import 'package:flutter/material.dart';
import 'package:todo_app/constants/color.dart';
import 'package:todo_app/widgets/todo_list.dart';
import 'package:todo_app/model/todo.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todos = Todo.todoList();
  final todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: buildappbar(),
      body: Stack(children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: Column(
            children: [
              searchBox(),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 50,
                        bottom: 20,
                      ),
                      child: Text(
                        "ToDo List",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    for (Todo tod in todos)
                      Todoitem(
                        td: tod,
                        onToDoChanged: handleToDOChange,
                        onDeleteItem: deleteToDoItem,
                      ),
                  ],
                ),
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(
                  bottom: 20,
                  left: 20,
                  right: 20,
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 0),
                      blurRadius: 10.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: todoController,
                  decoration: InputDecoration(
                    hintText: 'Enter a new Todo Item',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: 20,
                right: 20,
              ),
              child: ElevatedButton(
                child: Text(
                  '+',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
                onPressed: () {
                  addToDoItem(todoController.text);
                },
                style: ElevatedButton.styleFrom(
                  primary: tdBlue,
                  minimumSize: Size(60, 60),
                  elevation: 10,
                ),
              ),
            ),
          ]),
        ),
      ]),
    );
  }

  void handleToDOChange(Todo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void deleteToDoItem(String id) {
    setState(() {
      todos.removeWhere((item) => item.id == id);
    });
  }

  void addToDoItem(String todo) {
    setState(() {
      todos.add(Todo(
          id: DateTime.now().microsecondsSinceEpoch.toString(),
          todoText: todo));
    });
    todoController.clear();
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
