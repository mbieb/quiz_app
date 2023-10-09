import 'package:freezed_annotation/freezed_annotation.dart';
part 'topics.freezed.dart';

@freezed
class Topics with _$Topics {
  const factory Topics(
    String? id,
    String? name,
  ) = _Topics;
}
