import 'package:flutter_bloc_template/base/helper/result.dart';
import 'package:flutter_bloc_template/base/repo/base_repo.dart';
import 'package:flutter_bloc_template/data/data_source/remote/service/course_service.dart';
import 'package:flutter_bloc_template/data/mapper/course/promote_mapper.dart';
import 'package:flutter_bloc_template/domain/entity/course/promote_entity.dart';
import 'package:flutter_bloc_template/domain/repo/course_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CourseRepo)
class CourseRepoImpl extends BaseRepository implements CourseRepo {
  final CourseService _courseService;

  CourseRepoImpl(this._courseService);

  @override
  Future<Result<List<PromoteEntity>>> fetchPromotes() {
    return handleApiCall(
      _courseService.fetchPromotes(),
      mapper: (resp) => resp?.data?.map(PromoteMapper.mapToEntity).toList() ?? [],
    );
  }
}
