// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:isar/isar.dart';

part 'todo_modal.g.dart';

@collection
class Todo {
  final id = Isar.autoIncrement;
  final String task;
  final String description;
  final bool completed;
  final bool imprtant;
  final DateTime createdOn;
  Todo({
    required this.task,
    required this.description,
    required this.completed,
    required this.imprtant,
    required this.createdOn,
  });

  Todo copyWith({
    String? task,
    String? description,
    bool? completed,
    bool? imprtant,
    DateTime? createdOn,
  }) {
    return Todo(
      task: task ?? this.task,
      description: description ?? this.description,
      completed: completed ?? this.completed,
      imprtant: imprtant ?? this.imprtant,
      createdOn: createdOn ?? this.createdOn,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'task': task,
      'description': description,
      'completed': completed,
      'imprtant': imprtant,
      'createdOn': createdOn.millisecondsSinceEpoch,
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      task: map['task'] as String,
      description: map['description'] as String,
      completed: map['completed'] as bool,
      imprtant: map['imprtant'] as bool,
      createdOn: DateTime.fromMillisecondsSinceEpoch(map['createdOn'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory Todo.fromJson(String source) =>
      Todo.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Todo(task: $task, description: $description, completed: $completed, imprtant: $imprtant, createdOn: $createdOn)';
  }

  @override
  bool operator ==(covariant Todo other) {
    if (identical(this, other)) return true;

    return other.task == task &&
        other.description == description &&
        other.completed == completed &&
        other.imprtant == imprtant &&
        other.createdOn == createdOn;
  }

  @override
  int get hashCode {
    return task.hashCode ^
        description.hashCode ^
        completed.hashCode ^
        imprtant.hashCode ^
        createdOn.hashCode;
  }
}
