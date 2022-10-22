// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cheap_market_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheapMarketInfo _$CheapMarketInfoFromJson(Map<String, dynamic> json) =>
    CheapMarketInfo(
      json['City'] as String,
      json['Town'] as String,
      json['Service'] as String,
      json['Specific_Service'] as String,
      json['Name'] as String,
      json['Owner'] as String,
      json['Address'] as String,
      json['Call'] as String,
      json['All_Menu'] as String,
      json['Good_Menu'] as String,
      json['Good_Menu_Ratio'] as String,
      json['Good_Menu_Status'] as Map<String, dynamic>,
      json['Recent_Repair'] as String,
      json['Total_Repair_Term'] as String,
    );

Map<String, dynamic> _$CheapMarketInfoToJson(CheapMarketInfo instance) =>
    <String, dynamic>{
      'City': instance.city,
      'Town': instance.town,
      'Service': instance.service,
      'Specific_Service': instance.specificService,
      'Name': instance.name,
      'Owner': instance.owner,
      'Address': instance.address,
      'Call': instance.callNumber,
      'All_Menu': instance.allMenu,
      'Good_Menu': instance.goodMenu,
      'Good_Menu_Ratio': instance.goodMenuRatio,
      'Good_Menu_Status': instance.goodMenuStatus,
      'Recent_Repair': instance.recentRepair,
      'Total_Repair_Term': instance.totlaRepairTerm,
    };
