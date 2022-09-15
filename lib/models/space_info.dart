import 'package:json_annotation/json_annotation.dart';

part 'space_info.g.dart';

@JsonSerializable()
class SpaceInfo {
  @JsonKey(name: "spcId")
  final String id;
  @JsonKey(name: "spcName")
  final String name;
  @JsonKey(name: "areaCpvn")
  final String country;
  @JsonKey(name: "areaSggn")
  final String region;
  @JsonKey(name: "address")
  final String address;
  @JsonKey(name: "spcTime")
  final String time;
  @JsonKey(name: "operOrgan")
  final String organization;
  @JsonKey(name: "homepage")
  final String page;
  @JsonKey(name: "telNo")
  final String phone;
  @JsonKey(name: "officeHours")
  final String officeHours;
  @JsonKey(name: "openDate")
  final String openDate;
  @JsonKey(name: "applyTarget")
  final String applyTarget;
  @JsonKey(name: "spcType")
  final String type;
  @JsonKey(name: "majorForm")
  final String majorForm;
  @JsonKey(name: "spcCost")
  final String cost;
  @JsonKey(name: "addFacilCost")
  final String facilCost;
  @JsonKey(name: "foodYn")
  final String food;

  SpaceInfo(
      this.id,
      this.name,
      this.country,
      this.region,
      this.address,
      this.time,
      this.organization,
      this.page,
      this.phone,
      this.officeHours,
      this.openDate,
      this.applyTarget,
      this.type,
      this.majorForm,
      this.cost,
      this.facilCost,
      this.food);

  factory SpaceInfo.fromJson(Map<String, dynamic> json) =>
      _$SpaceInfoFromJson(json);
}
