import 'package:bloc_udemy1/core/usecase/usecase.dart';
import 'package:bloc_udemy1/core/utils/typedef.dart';
import 'package:bloc_udemy1/src/authentication/domain/repositories/authentication_repository.dart';
import 'package:equatable/equatable.dart';

class CreateUser extends UsecaseWithParams<void, CreateUserParams> {
  const CreateUser(this._repository);

  final AuthenticationRepository _repository;

  @override
  ResultFuture call(CreateUserParams params) async => _repository.createUser(
    createdAt: params.createdAt,
    name: params.name,
    avatar: params.avatar,
  );

  // ResultVoid createUser({
  //   required String createdAt,
  //   required String name,
  //   required String avatar,
  // }) async =>
  //     _repository.createUser(createdAt: createdAt, name: name, avatar: avatar);
}

class CreateUserParams extends Equatable {
  const CreateUserParams({
    required this.createdAt,
    required this.name,
    required this.avatar,
  });
  final String createdAt;
  final String name;
  final String avatar;

  @override
  List<Object?> get props => [createdAt, name, avatar];
}
