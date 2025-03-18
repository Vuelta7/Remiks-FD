import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_cancellable_tile_provider/flutter_map_cancellable_tile_provider.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

class ShopLocationMap extends StatefulWidget {
  const ShopLocationMap({super.key});

  @override
  _ShopLocationMapState createState() => _ShopLocationMapState();
}

class _ShopLocationMapState extends State<ShopLocationMap> {
  final MapController _mapController = MapController();
  LatLng? _userLocation;

  @override
  void initState() {
    super.initState();
    _fetchUserLocation();
  }

  Future<void> _fetchUserLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      await Geolocator.requestPermission();
      return;
    }

    Position position = await Geolocator.getCurrentPosition(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.best,
      ),
    );

    setState(() {
      _userLocation = LatLng(position.latitude, position.longitude);
      _mapController.move(_userLocation!, 15);
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: _mapController,
      options: MapOptions(
        initialCenter: LatLng(14.8782598, 120.8658127),
        initialZoom: 15,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          tileProvider: CancellableNetworkTileProvider(),
        ),
        MarkerLayer(
          markers: [
            Marker(
              point: LatLng(14.8782598, 120.8658127),
              width: 48,
              height: 48,
              child:
                  const Icon(Icons.location_pin, color: Colors.red, size: 48),
            ),
            if (_userLocation != null)
              Marker(
                point: _userLocation!,
                width: 48,
                height: 48,
                child: const Icon(Icons.person_pin_circle_rounded,
                    color: Colors.blue, size: 48),
              ),
          ],
        ),
      ],
    );
  }
}
