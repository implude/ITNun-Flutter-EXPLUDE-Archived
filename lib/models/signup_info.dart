import 'package:itnun/models/user_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'signup_info.g.dart';

@JsonSerializable()
class SignupInfo {
  @JsonKey(name: "user_email")
  final String email;
  @JsonKey(name: "user_pw")
  final String password;
  @JsonKey(name: "user_job_status")
  final UserJob job;
  @JsonKey(name: "user_academic_status")
  final UserStage stage;
  @JsonKey(name: "user_specialization")
  final UserDepartment department;
  @JsonKey(name: "user_pre_startup")
  final bool preparing;

  const SignupInfo({
    required this.email,
    required this.password,
    required this.job,
    required this.stage,
    required this.department,
    required this.preparing,
  });

  Map<String, dynamic> toJson() => _$SignupInfoToJson(this);
}
