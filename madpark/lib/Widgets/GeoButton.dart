import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GeoButton  extends StatelessWidget {
  VoidCallback? onpress = () {};
  GeoButton ({required this.onpress});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.location_on_outlined, size: 72, color: Colors.indigoAccent,),
      onPressed: onpress,
    );
  }
}
