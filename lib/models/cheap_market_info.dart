import 'package:json_annotation/json_annotation.dart';

part 'cheap_market_info.g.dart';

@JsonSerializable()
class CheapMarketInfo {
  @JsonKey(name: "City")
  final String city;

  @JsonKey(name: "Town")
  final String town;

  @JsonKey(name: "Service")
  final String service;

  @JsonKey(name: "Specific_Service")
  final String specificService;

  @JsonKey(name: "Name")
  final String name;

  @JsonKey(name: "Owner")
  final String owner;

  @JsonKey(name: "Address")
  final String address;

  @JsonKey(name: "Call")
  final String callNumber;

  @JsonKey(name: "All_Menu")
  final String allMenu;

  @JsonKey(name: "Good_Menu")
  final String goodMenu;

  @JsonKey(name: "Good_Menu_Ratio")
  final String goodMenuRatio;

  @JsonKey(name: "Good_Menu_Status")
  final Map<String, dynamic> goodMenuStatus;

  @JsonKey(name: "Recent_Repair")
  final String recentRepair;

  @JsonKey(name: "Total_Repair_Term")
  final String totlaRepairTerm;

  CheapMarketInfo(
      this.city,
      this.town,
      this.service,
      this.specificService,
      this.name,
      this.owner,
      this.address,
      this.callNumber,
      this.allMenu,
      this.goodMenu,
      this.goodMenuRatio,
      this.goodMenuStatus,
      this.recentRepair,
      this.totlaRepairTerm);

  factory CheapMarketInfo.fromJson(Map<String, dynamic> json) => _$CheapMarketInfoFromJson(json);
}
