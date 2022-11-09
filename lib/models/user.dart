import 'package:itnun/models/user_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(createToJson: false)
class User {
  @JsonKey(name: "user_email")
  final String email;

  @JsonKey(name: "user_academic_status")
  final UserStage academic;

  @JsonKey(name: "user_job_status")
  final UserJob job;

  @JsonKey(name: "user_specialization")
  final UserDepartment specialization;

  @JsonKey(name: "user_pre_startup")
  final bool preStartup;

  User(this.email, this.academic, this.job, this.specialization,
      this.preStartup);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
