// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewResponseDtoImpl _$$ReviewResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ReviewResponseDtoImpl(
      id: json['id'] as String?,
      courseId: json['courseId'] as String?,
      userId: json['userId'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      comment: json['comment'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$ReviewResponseDtoImplToJson(
        _$ReviewResponseDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'courseId': instance.courseId,
      'userId': instance.userId,
      'rating': instance.rating,
      'comment': instance.comment,
      'createdAt': instance.createdAt,
    };
