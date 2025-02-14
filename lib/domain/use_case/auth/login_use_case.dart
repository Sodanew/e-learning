import 'package:flutter_bloc_template/base/helper/result.dart';
import 'package:flutter_bloc_template/base/use_case/future_use_case.dart';
import 'package:injectable/injectable.dart';

import '../../entity/auth/auth_entity.dart';

@injectable
final class LoginUseCase extends FutureUseCase<AuthEntity, LoginRequest> {
  @override
  Future<Result<AuthEntity>> invoke(LoginRequest param) {
    throw UnimplementedError();
  }
}

class LoginRequest {
}