import 'package:json_annotation/json_annotation.dart';

class UserInfo {
  final UserJob job;
  final UserStage academic;
  final UserDepartment specialization;
  final bool preparing;

  const UserInfo({
    required this.job,
    required this.academic,
    required this.specialization,
    required this.preparing,
  });
}

enum UserJob {
  @JsonValue("incumbent")
  incumbent("재직자"),
  @JsonValue("take a leave of absence")
  takeALeaveOfAbsence("휴직자"),
  @JsonValue("job seeker")
  jobSeeker("취업준비생"),
  @JsonValue("retiree")
  retiree("퇴직자");

  final String message;

  const UserJob(this.message);
}

enum UserStage {
  @JsonValue("middle")
  middle("중학교"),
  @JsonValue("high")
  high("고등학교"),
  @JsonValue("undergraduate")
  undergraduate("대학교"),
  @JsonValue("graduate")
  graduate("석사과정"),
  @JsonValue("doctoral degree")
  doctoralDegree("박사과정");

  final String message;

  const UserStage(this.message);
}

enum UserDepartment {
  @JsonValue("Humanities")
  humanities("인문계열"),
  @JsonValue("Social Sciences")
  socialSciences("사회계열"),
  @JsonValue("Arts and Physical Education")
  artsAndPhysicalEducation("예체능계열"),
  @JsonValue("Natural Sciences")
  naturalSciences("자연계열"),
  @JsonValue("Engineering")
  engineering("공학계열"),
  @JsonValue("None")
  none("없음");

  final String message;

  const UserDepartment(this.message);
}
