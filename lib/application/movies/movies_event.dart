part of 'movies_bloc.dart';

@freezed
class MoviesEvent with _$MoviesEvent {
  const factory MoviesEvent.initialize({
    required String id,
  }) = Initialize;
  
  factory MoviesEvent.addMyList({
    required String id,
  }) = AddMyList;
  factory MoviesEvent.removeMyList({
    required String id,
  }) = RemoveMyList;
}
