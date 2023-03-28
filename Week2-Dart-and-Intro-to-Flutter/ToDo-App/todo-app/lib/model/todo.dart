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
      Todo(
        id: '03',
        todoText: 'Work',
      ),
      Todo(
        id: '04',
        todoText: 'Lunch',
      ),
      Todo(
        id: '05',
        todoText: 'Gym',
      ),
      Todo(
        id: '05',
        todoText: 'Dinner',
      ),
      Todo(
        id: '05',
        todoText: 'Sleep',
      ),
    ];
  }
}
