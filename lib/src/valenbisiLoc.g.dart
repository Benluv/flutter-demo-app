// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'valenbisiLoc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Feature _$FeatureFromJson(Map<String, dynamic> json) => Feature(
      type: json['type'] as String,
      geometry: Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      properties:
          Properties.fromJson(json['properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FeatureToJson(Feature instance) => <String, dynamic>{
      'type': instance.type,
      'geometry': instance.geometry,
      'properties': instance.properties,
    };

Geometry _$GeometryFromJson(Map<String, dynamic> json) => Geometry(
      type: json['type'] as String,
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$GeometryToJson(Geometry instance) => <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };

Properties _$PropertiesFromJson(Map<String, dynamic> json) => Properties(
      id: json['id'] as String,
      nombre: json['nombre'] as String,
      seccion: json['seccion'] as String,
      fallera: json['fallera'] as String,
      presidente: json['presidente'] as String,
      artista: json['artista'] as String,
      lema: json['lema'] as String,
      boceto: json['boceto'] as String,
      grpro: json['grpro'] as String,
      proteccion: json['proteccion'] as String,
      grins: json['grins'] as String,
      orden: json['orden'] as String,
      hora: json['hora'] as String,
      seccion_i: json['seccion_i'] as String,
      fallera_i: json['fallera_i'] as String,
      presidente_i: json['presidente_i'] as String,
      artista_i: json['artista_i'] as String,
      lema_i: json['lema_i'] as String,
      anyo_fundacion: json['anyo_fundacion'] as String,
      anyo_fundacion_i: json['anyo_fundacion_i'] as String,
      distintivo: json['distintivo'] as String,
      distintivo_i: json['distintivo_i'] as String,
      sector: json['sector'] as String,
      boceto_i: json['boceto_i'] as String,
    );

Map<String, dynamic> _$PropertiesToJson(Properties instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nombre': instance.nombre,
      'seccion': instance.seccion,
      'fallera': instance.fallera,
      'presidente': instance.presidente,
      'artista': instance.artista,
      'lema': instance.lema,
      'boceto': instance.boceto,
      'grpro': instance.grpro,
      'proteccion': instance.proteccion,
      'grins': instance.grins,
      'orden': instance.orden,
      'hora': instance.hora,
      'seccion_i': instance.seccion_i,
      'fallera_i': instance.fallera_i,
      'presidente_i': instance.presidente_i,
      'artista_i': instance.artista_i,
      'lema_i': instance.lema_i,
      'anyo_fundacion': instance.anyo_fundacion,
      'anyo_fundacion_i': instance.anyo_fundacion_i,
      'distintivo': instance.distintivo,
      'distintivo_i': instance.distintivo_i,
      'sector': instance.sector,
      'boceto_i': instance.boceto_i,
    };

Stations _$StationsFromJson(Map<String, dynamic> json) => Stations(
      type: json['type'] as String,
      features: (json['features'] as List<dynamic>)
          .map((e) => Feature.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StationsToJson(Stations instance) => <String, dynamic>{
      'type': instance.type,
      'features': instance.features,
    };
