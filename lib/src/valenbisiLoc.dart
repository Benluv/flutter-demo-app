import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';

part 'valenbisiLoc.g.dart';

@JsonSerializable()
class Feature {
  final String type;
  final Geometry geometry;
  final Properties properties;

  Feature({
    required this.type,
    required this.geometry,
    required this.properties,
  });

  factory Feature.fromJson(Map<String, dynamic> json) =>
      _$FeatureFromJson(json);
  Map<String, dynamic> toJson() => _$FeatureToJson(this);
}

@JsonSerializable()
class Geometry {
  final String type;
  final List<double> coordinates;

  Geometry({
    required this.type,
    required this.coordinates,
  });

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);
  Map<String, dynamic> toJson() => _$GeometryToJson(this);
}

@JsonSerializable()
class Properties {
  final String id;
  final String nombre;
  final String seccion;
  final String fallera;
  final String presidente;
  final String artista;
  final String lema;
  final String boceto;
  final String grpro;
  final String proteccion;
  final String grins;
  final String orden;
  final String hora;
  final String seccion_i;
  final String fallera_i;
  final String presidente_i;
  final String artista_i;
  final String lema_i;
  final String anyo_fundacion;
  final String anyo_fundacion_i;
  final String distintivo;
  final String distintivo_i;
  final String sector;
  final String boceto_i;

  Properties({
    required this.id,
    required this.nombre,
    required this.seccion,
    required this.fallera,
    required this.presidente,
    required this.artista,
    required this.lema,
    required this.boceto,
    required this.grpro,
    required this.proteccion,
    required this.grins,
    required this.orden,
    required this.hora,
    required this.seccion_i,
    required this.fallera_i,
    required this.presidente_i,
    required this.artista_i,
    required this.lema_i,
    required this.anyo_fundacion,
    required this.anyo_fundacion_i,
    required this.distintivo,
    required this.distintivo_i,
    required this.sector,
    required this.boceto_i,
  });

  factory Properties.fromJson(Map<String, dynamic> json) =>
      _$PropertiesFromJson(json);
  Map<String, dynamic> toJson() => _$PropertiesToJson(this);
}

@JsonSerializable()
class Stations {
  final String type;
  final List<Feature> features;

  Stations({
    required this.type,
    required this.features,
  });

  factory Stations.fromJson(Map<String, dynamic> json) =>
      _$StationsFromJson(json);
  Map<String, dynamic> toJson() => _$StationsToJson(this);
}

Future<Stations> getValenBisi() async {
  const valenBisiURL =
      'https://mapas.valencia.es/lanzadera/opendata/Monumentos_falleros/JSON?srsName=EPSG:4326';

  // Retrieve the locations of Google offices
  try {
    final response = await http.get(Uri.parse(valenBisiURL));
    if (response.statusCode == 200) {
      return Stations.fromJson(
          json.decode(response.body) as Map<String, dynamic>);
    }
  } catch (e) {
    if (kDebugMode) {
      print(e);
    }
  }

  // Fallback for when the above HTTP request fails.
  return Stations.fromJson(
    json.decode(
      await rootBundle.loadString('assets/valenbisiLoc.json'),
    ) as Map<String, dynamic>,
  );
}
