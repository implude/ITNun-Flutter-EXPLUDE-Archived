// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpaceInfo _$SpaceInfoFromJson(Map<String, dynamic> json) => SpaceInfo(
      json['spcId'] as String,
      json['spcName'] as String,
      json['areaCpvn'] as String,
      json['areaSggn'] as String,
      json['address'] as String,
      json['spcTime'] as String,
      json['operOrgan'] as String,
      json['homepage'] as String,
      json['telNo'] as String,
      json['officeHours'] as String,
      json['openDate'] as String,
      json['applyTarget'] as String,
      json['spcType'] as String,
      json['majorForm'] as String,
      json['spcCost'] as String,
      json['addFacilCost'] as String,
      json['foodYn'] as String,
    );

Map<String, dynamic> _$SpaceInfoToJson(SpaceInfo instance) => <String, dynamic>{
      'spcId': instance.id,
      'spcName': instance.name,
      'areaCpvn': instance.country,
      'areaSggn': instance.region,
      'address': instance.address,
      'spcTime': instance.time,
      'operOrgan': instance.organization,
      'homepage': instance.page,
      'telNo': instance.phone,
      'officeHours': instance.officeHours,
      'openDate': instance.openDate,
      'applyTarget': instance.applyTarget,
      'spcType': instance.type,
      'majorForm': instance.majorForm,
      'spcCost': instance.cost,
      'addFacilCost': instance.facilCost,
      'foodYn': instance.food,
    };
