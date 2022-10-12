// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'policy_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PolicyInfo _$PolicyInfoFromJson(Map<String, dynamic> json) => PolicyInfo(
      json['policy_Biz_code'] as String,
      json['policy_academic_status'] as String,
      json['policy_age'] as String,
      json['policy_description'] as String,
      json['policy_good_at'] as String,
      json['policy_id'] as String,
      json['policy_job_status'] as String,
      json['policy_name'] as String,
      json['policy_request_deadline'] as String,
      json['policy_specialization'] as String,
      json['policy_spor_amount'] as String,
      json['policy_spor_description'] as String,
      json['policy_type'] as String,
      json['policy_website_url'] as String?,
      json['policy_progress'] as String,
    );

Map<String, dynamic> _$PolicyInfoToJson(PolicyInfo instance) =>
    <String, dynamic>{
      'policy_Biz_code': instance.bizCode,
      'policy_academic_status': instance.academic,
      'policy_age': instance.age,
      'policy_description': instance.description,
      'policy_good_at': instance.goodAt,
      'policy_id': instance.id,
      'policy_job_status': instance.job,
      'policy_name': instance.name,
      'policy_request_deadline': instance.deadline,
      'policy_specialization': instance.specialization,
      'policy_spor_amount': instance.sporAmount,
      'policy_spor_description': instance.sporDescription,
      'policy_type': instance.type,
      'policy_website_url': instance.website,
      'policy_progress': instance.progress,
    };
