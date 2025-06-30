import 'package:bloc_udemy1/core/utils/typedef.dart';

abstract class UsecaseWithParams<Type, Params> {
  const UsecaseWithParams();
  ResultFuture<Type> call(Params Params);
}

abstract class UsecaseWithoutParams<Type, Params> {
  const UsecaseWithoutParams();
  ResultFuture<Type> call();
}
