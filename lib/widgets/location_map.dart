import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_cancellable_tile_provider/flutter_map_cancellable_tile_provider.dart';
import 'package:latlong2/latlong.dart';

class ShopLocationMap extends StatelessWidget {
  const ShopLocationMap({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
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
          ],
        ),
      ],
    );
  }
}
