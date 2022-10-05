
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/model/todo_model.dart';

class TodoListManager extends StateNotifier<List<TodoModel>>
{
  TodoListManager([List<TodoModel> ? initialTodos]):super(initialTodos ?? []);

  void addTodo(TodoModel model)
  {
    state = [...state,model];
  }

  void removeTodo(TodoModel model)
  {
    state = state.where((element) => element.id != model.id).toList();
  }

  void changeActive(int id)
  {
    state=[...state,
      for(var todo in state)
      if(todo.id == id)
      TodoModel(todo.id, todo.date, todo.category, todo.text, !todo.isActive, todo.isRepeat, todo.isAlarm)
      else
      todo
    ];
  }

  void changeRepeat(int id)
  {
    state=[...state,
      for(var todo in state)
      if(todo.id == id)
      TodoModel(todo.id, todo.date, todo.category, todo.text, todo.isActive, !todo.isRepeat, todo.isAlarm)
      else
      todo
    ];
  }
  void alarmCreate(int id,ScheduleAlarm alarm)
  {
     state=[...state,
      for(var todo in state)
      if(todo.id == id)
      TodoModel(todo.id, todo.date, todo.category, todo.text, todo.isActive, !todo.isRepeat, alarm)
      else
      todo
    ];
  }
  
}