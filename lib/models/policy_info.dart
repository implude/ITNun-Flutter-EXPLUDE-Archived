import 'package:collection/collection.dart';
import 'package:itnun/regions.dart';
import 'package:json_annotation/json_annotation.dart';

part 'policy_info.g.dart';

@JsonSerializable()
class PolicyInfo {
  @JsonKey(name: "policy_Biz_code")
  final String bizCode;
  @JsonKey(name: "policy_academic_status")
  final String academic;
  @JsonKey(name: "policy_age")
  final String age;
  @JsonKey(name: "policy_description")
  final String description;
  @JsonKey(name: "policy_good_at")
  final String goodAt;
  @JsonKey(name: "policy_id")
  final String id;
  @JsonKey(name: "policy_job_status")
  final String job;
  @JsonKey(name: "policy_name")
  final String name;
  @JsonKey(name: "policy_request_deadline")
  final String deadline;
  @JsonKey(name: "policy_specialization")
  final String specialization;
  @JsonKey(name: "policy_spor_amount")
  final String sporAmount;
  @JsonKey(name: "policy_spor_description")
  final String sporDescription;
  @JsonKey(name: "policy_type")
  final String type;
  @JsonKey(name: "policy_website_url")
  final String? website;
  @JsonKey(name: "policy_progress")
  final String progress;

  late final region = () {
    final country = bigRegions.entries
        .singleWhereOrNull((element) => bizCode.startsWith(element.value))
        ?.key;

    if (country == null) return "전국";

    final specific = regionMapping[country]!
        .entries
        .singleWhereOrNull((element) => element.value == bizCode)
        ?.key;

    return specific == null ? country : "$country $specific";
  }();

  PolicyInfo(
      this.bizCode,
      this.academic,
      this.age,
      this.description,
      this.goodAt,
      this.id,
      this.job,
      this.name,
      this.deadline,
      this.specialization,
      this.sporAmount,
      this.sporDescription,
      this.type,
      this.website,
      this.progress);

  factory PolicyInfo.fromJson(Map<String, dynamic> json) =>
      _$PolicyInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PolicyInfoToJson(this);
}
