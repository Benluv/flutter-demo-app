import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'src/locations.dart' as locations;
import 'src/valenbisiLoc.dart' as valenbisiLoc;

import 'main.dart';

class MyMapPage extends StatefulWidget {
  @override
  State<MyMapPage> createState() => _MyMapPageState();
}

class _MyMapPageState extends State<MyMapPage> {
  final Map<String, Marker> _markers = {};

  Future<void> _onMapCreated(GoogleMapController controller) async {
    final valenBisi = await valenbisiLoc.getValenBisi();
    setState(() {
      _markers.clear();
      for (final station in valenBisi.features) {
        final marker = Marker(
          markerId: MarkerId(station.properties.nombre),
          position: LatLng(
              station.geometry.coordinates[1], station.geometry.coordinates[0]),
          infoWindow: InfoWindow(
            title: station.properties.nombre,
            snippet: station.properties.nombre,
          ),
        );
        _markers[station.properties.nombre] = marker;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green[700],
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Maps Sample App'),
          elevation: 2,
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: const CameraPosition(
            target: LatLng(0, 0),
            zoom: 2.0,
          ),
          markers: _markers.values.toSet(),
        ),
      ),
    );
  }
}
