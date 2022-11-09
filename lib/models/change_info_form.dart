import 'package:itnun/models/user_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'change_info_form.g.dart';

@JsonSerializable(createFactory: false)
class ChangeInfoForm {
  final String token;

  @JsonKey(name: "user_job_status")
  final UserJob job;

  @JsonKey(name: "user_specialization")
  final UserDepartment specialization;

  @JsonKey(name: "user_academic_status")
  final UserStage academic;

  @JsonKey(name: "user_pre_startup")
  final bool preStartup;

  const ChangeInfoForm({
    required this.token,
    required this.job,
    required this.specialization,
    required this.academic,
    required this.preStartup,
  });

  Map<String, dynamic> toJson() => _$ChangeInfoFormToJson(this);
}
