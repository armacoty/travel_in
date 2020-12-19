import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:travel_in/client.dart';
import 'package:travel_in/models/attractions_model.dart';

class PointMap extends StatefulWidget {
  @override
  _PointMapState createState() => _PointMapState();
}

class _PointMapState extends State<PointMap> {
  Completer<GoogleMapController> _googleMapController = Completer();

  List<Attraction> _attractions = client.getAttractions();

  Set<Marker> _markers = {};

  double latitude = 0.0, longitude = 0.0;

  @override
  void initState() {
    getMyLocation();
    getMarkers();
    super.initState();
  }

  void getMyLocation() async {
    final myPosition = await client.determinePosition();
    print(myPosition);
    latitude = myPosition.latitude;
    longitude = myPosition.longitude;
    getMarkers();
    _changeCameraPosition();
    setState(() {});
  }

  void getMarkers() async {
    _markers = {};
    _markers.add(
      Marker(
        markerId: MarkerId('my_position'),
        position: LatLng(latitude, longitude),
        icon: await BitmapDescriptor.fromAssetImage(
          ImageConfiguration(
            size: Size(67.5, 54),
          ),
          'assets/map/green_marker.png',
        ),
      ),
    );
    for (int i = 0; i < _attractions.length; i++) {
      _markers.add(
        Marker(
          onTap: () {
            print("$i");
          },
          markerId: MarkerId(i.toString()),
          position: LatLng(_attractions[i].latitude, _attractions[i].longitude),
          icon: await BitmapDescriptor.fromAssetImage(
            ImageConfiguration(
              size: Size(67.5, 54),
            ),
            'assets/map/marker.png',
          ),
          infoWindow: InfoWindow(
            title: "${_attractions[i].name}",
            onTap: () {},
          ),
        ),
      );
    }
  }

  Future<void> _changeCameraPosition() async {
    final GoogleMapController controller = await _googleMapController.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(
            latitude,
            longitude,
          ),
          zoom: 14.4746,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            markers: _markers,
            onTap: (value) => setState(() {}),
            initialCameraPosition: CameraPosition(
              target: LatLng(57.575495, 39.857969),
              zoom: 14.4746,
            ),
            onMapCreated: (GoogleMapController controller) {
              _googleMapController.complete(controller);
            },
          ),
        ],
      ),
    );
  }
}
