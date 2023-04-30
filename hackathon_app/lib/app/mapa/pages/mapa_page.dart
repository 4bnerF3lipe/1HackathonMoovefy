import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../shared/models/cores_aplicativo.dart';

class MapaPage extends StatelessWidget {
  MapaPage({super.key});

  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();

  Future<bool> _handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return false;
    }
    return true;
  }

  Future<Position?> _getCurrentPosition() async {
    final hasPermission = await _handleLocationPermission();

    if (!hasPermission) return null;
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high).then((Position position) {
      return position;
    }).catchError((e) {
      debugPrint(e);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
        mapType: MapType.normal,
        myLocationEnabled: true,
        markers: {
          const Marker(
            markerId: MarkerId("ONG 1"),
            infoWindow: InfoWindow(title: "VOCÊ ESTA AQUI"),
            position: LatLng(-22.330949616313024, -49.05392666103666),
            draggable: false, // To do: custom marker icon
          ),
          const Marker(
            markerId: MarkerId("ONG 1"),
            infoWindow: InfoWindow(title: "ONG 1 - ARCA DA FÉ"),
            position: LatLng(-22.327237907629538, -49.05640502208134),
            draggable: false, // To do: custom marker icon
          ),
          const Marker(
            markerId: MarkerId("ONG 2"),
            infoWindow: InfoWindow(title: "ONG 2 - ARCA DA FÉ"),
            position: LatLng(-22.32857770689602, -49.04944200754341),
            draggable: false, // To do: custom marker icon
          ),
          const Marker(
            markerId: MarkerId("ONG 3"),
            infoWindow: InfoWindow(title: "ONG 3 - ARCA DA FÉ"),
            position: LatLng(-22.335493613992213, -49.0520460283945),
            draggable: false, // To do: custom marker icon
          ),
          const Marker(
            markerId: MarkerId("ONG 4"),
            infoWindow: InfoWindow(title: "ONG 4 - ARCA DA FÉ"),
            position: LatLng(-22.32829860134185, -49.058837381361826),
            draggable: false, // To do: custom marker icon
          ),
          const Marker(
            markerId: MarkerId("ONG 5"),
            infoWindow: InfoWindow(title: "ONG 5 - ARCA DA FÉ"),
            position: LatLng(-22.327663437576394, -49.050318685945015),
            draggable: false, // To do: custom marker icon
          ),
        },
        initialCameraPosition: CameraPosition(
          target: LatLng(-22.330949616313024, -49.05392666103666),
          zoom: 16,
        ));
  }
}
