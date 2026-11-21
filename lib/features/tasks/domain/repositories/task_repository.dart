import 'package:dartz/dartz.dart';
import 'package:todo_app_2026/core/failures/failures.dart';
import 'package:todo_app_2026/features/tasks/domain/entities/task_entity.dart';

abstract class TaskRepository {
  Future<Either<Failure, List<TaskEntity>>> getTasks();

  Future<Either<Failure, TaskEntity>> getTaskById(String id);

  Future<Either<Failure, Unit>> addTask(TaskEntity task);

  Future<Either<Failure, Unit>> updateTask(TaskEntity task);

  Future<Either<Failure, Unit>> deleteTask(TaskEntity task);
}
