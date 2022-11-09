// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_info_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$ChangeInfoFormToJson(ChangeInfoForm instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user_job_status': _$UserJobEnumMap[instance.job]!,
      'user_specialization': _$UserDepartmentEnumMap[instance.specialization]!,
      'user_academic_status': _$UserStageEnumMap[instance.academic]!,
      'user_pre_startup': instance.preStartup,
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

const _$UserStageEnumMap = {
  UserStage.middle: 'middle',
  UserStage.high: 'high',
  UserStage.undergraduate: 'undergraduate',
  UserStage.graduate: 'graduate',
  UserStage.doctoralDegree: 'doctoral degree',
};
