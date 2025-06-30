import 'package:bloc_udemy1/core/errors/failure.dart';
import 'package:bloc_udemy1/core/usecase/usecase.dart';
import 'package:bloc_udemy1/core/utils/typedef.dart';
import 'package:bloc_udemy1/src/authentication/domain/entities/user.dart';
import 'package:dartz/dartz.dart';

abstract class AuthenticationRepository{
  const AuthenticationRepository();

ResultVoid createUser({
    required String createdAt,
    required String name,
    required String avatar,
  });

ResultFuture<List<User>> getUsers();
}

