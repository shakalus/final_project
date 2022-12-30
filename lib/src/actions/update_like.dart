part of 'index.dart';

@freezed
class UpdateLike with _$UpdateLike {
  const factory UpdateLike(int id, {required bool like}) = UpdateLikeStart;

  const factory UpdateLike.successful(int id, {required bool like}) = UpdateLikeSuccessful;

  const factory UpdateLike.error(Object error, StackTrace stackTrace) = UpdateLikeError;
}
