class Todo {
  String? id;
  String? todoText;
  bool isDone;

  Todo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<Todo> todoList() {
    return [
      Todo(id: '01', todoText: 'Morning Exercise', isDone: true),
      Todo(id: '02', todoText: 'Breakfast', isDone: true),
      Todo(id: '02', todoText: 'Breakfast', isDone: true),
      Todo(id: '02', todoText: 'Breakfast', isDone: true),
      Todo(id: '02', todoText: 'Breakfast', isDone: true),
    ];
  }
}
