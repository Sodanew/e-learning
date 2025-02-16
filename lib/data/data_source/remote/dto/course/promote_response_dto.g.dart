// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promote_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromoteResponseDtoImpl _$$PromoteResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PromoteResponseDtoImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      discount: json['discount'] as String?,
      isActive: json['isActive'] as bool?,
      expiryDate: json['expiryDate'] as String?,
    );

Map<String, dynamic> _$$PromoteResponseDtoImplToJson(
        _$PromoteResponseDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'discount': instance.discount,
      'isActive': instance.isActive,
      'expiryDate': instance.expiryDate,
    };
