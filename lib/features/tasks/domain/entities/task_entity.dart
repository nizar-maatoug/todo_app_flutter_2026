import 'package:equatable/equatable.dart';

class TaskEntity extends Equatable {
  final String id;
  final String title;
  final String? description;
  final bool isCompleted;
  final bool isDeleted;
  final DateTime createdAt;

  const TaskEntity({
    required this.id,
    required this.title,
    this.description,
    this.isCompleted = false,
    this.isDeleted = false,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [
    id,
    title,
    description,
    isCompleted,
    isDeleted,
    createdAt,
  ];
}
