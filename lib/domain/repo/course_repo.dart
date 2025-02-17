import 'package:flutter_bloc_template/domain/entity/course/promote_entity.dart';

import '../../base/helper/result.dart';

abstract class CourseRepo {
  Future<Result<List<PromoteEntity>>> fetchPromotes();
}
