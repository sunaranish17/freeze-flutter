import 'package:uuid/uuid.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';

var _uuid = const Uuid();

@freezed
class Todo with _$Todo {
  const factory Todo({
    required String description,
    required String id,
    @Default(false) bool completed,
  }) = _Todo;
}
