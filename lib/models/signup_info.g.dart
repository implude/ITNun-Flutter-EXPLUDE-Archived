// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupInfo _$SignupInfoFromJson(Map<String, dynamic> json) => SignupInfo(
      email: json['user_email'] as String,
      password: json['user_pw'] as String,
      job: $enumDecode(_$UserJobEnumMap, json['user_job_status']),
      stage: $enumDecode(_$UserStageEnumMap, json['user_academic_status']),
      department:
          $enumDecode(_$UserDepartmentEnumMap, json['user_specialization']),
      preparing: json['user_pre_startup'] as bool,
    );

Map<String, dynamic> _$SignupInfoToJson(SignupInfo instance) =>
    <String, dynamic>{
      'user_email': instance.email,
      'user_pw': instance.password,
      'user_job_status': _$UserJobEnumMap[instance.job]!,
      'user_academic_status': _$UserStageEnumMap[instance.stage]!,
      'user_specialization': _$UserDepartmentEnumMap[instance.department]!,
      'user_pre_startup': instance.preparing,
    };

const _$UserJobEnumMap = {
  UserJob.incumbent: 'incumbent',
  UserJob.takeALeaveOfAbsence: 'take a leave of absence',
  UserJob.jobSeeker: 'job seeker',
  UserJob.retiree: 'retiree',
};

const _$UserStageEnumMap = {
  UserStage.middle: 'middle',
  UserStage.high: 'high',
  UserStage.undergraduate: 'undergraduate',
  UserStage.graduate: 'graduate',
  UserStage.doctoralDegree: 'doctoral degree',
};

const _$UserDepartmentEnumMap = {
  UserDepartment.humanities: 'Humanities',
  UserDepartment.socialSciences: 'Social Sciences',
  UserDepartment.artsAndPhysicalEducation: 'Arts and Physical Education',
  UserDepartment.naturalSciences: 'Natural Sciences',
  UserDepartment.engineering: 'Engineering',
  UserDepartment.none: 'None',
};
