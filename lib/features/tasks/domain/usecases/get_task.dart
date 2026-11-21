

import 'package:dartz/dartz.dart';
import 'package:todo_app_2026/core/failures/failures.dart';
import 'package:todo_app_2026/features/tasks/domain/entities/task_entity.dart';
import 'package:todo_app_2026/features/tasks/domain/repositories/task_repository.dart';

class GetTaskById {
  final TaskRepository repository;

  GetTaskById(this.repository);

  Future<Either<Failure, TaskEntity>> call(String id) {
    return repository.getTaskById(id);
  }
}