// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      json['user_email'] as String,
      $enumDecode(_$UserStageEnumMap, json['user_academic_status']),
      $enumDecode(_$UserJobEnumMap, json['user_job_status']),
      $enumDecode(_$UserDepartmentEnumMap, json['user_specialization']),
      json['user_pre_startup'] as bool,
    );

const _$UserStageEnumMap = {
  UserStage.middle: 'middle',
  UserStage.high: 'high',
  UserStage.undergraduate: 'undergraduate',
  UserStage.graduate: 'graduate',
  UserStage.doctoralDegree: 'doctoral degree',
};

const _$UserJobEnumMap = {
  UserJob.incumbent: 'incumbent',
  UserJob.takeALeaveOfAbsence: 'take a leave of absence',
  UserJob.jobSeeker: 'job seeker',
  UserJob.retiree: 'retiree',
};

const _$UserDepartmentEnumMap = {
  UserDepartment.humanities: 'Humanities',
  UserDepartment.socialSciences: 'Social Sciences',
  UserDepartment.artsAndPhysicalEducation: 'Arts and Physical Education',
  UserDepartment.naturalSciences: 'Natural Sciences',
  UserDepartment.engineering: 'Engineering',
  UserDepartment.none: 'None',
};
