import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({super.key});

  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  late GoogleMapController mapController;
  final Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(const Marker(
          markerId: MarkerId('id-1'), position: LatLng(5.39985, 100.27362)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text('Google Map'),
      ),
      body: GoogleMap(
          zoomGesturesEnabled: true,
          onMapCreated: onMapCreated,
          markers: _markers,
          initialCameraPosition: const CameraPosition(
              target: LatLng(5.39985, 100.27362), zoom: 15)),
    );
  }
}

class GoogleScreen extends StatefulWidget {
  const GoogleScreen({super.key});

  @override
  State<GoogleScreen> createState() => _GoogleScreenState();
}

class _GoogleScreenState extends State<GoogleScreen> {
  late GoogleMapController mapController;
  final Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(const Marker(
          markerId: MarkerId('id-1'), position: LatLng(5.40883, 100.27715)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text('Google Map'),
      ),
      body: GoogleMap(
          zoomGesturesEnabled: true,
          onMapCreated: onMapCreated,
          markers: _markers,
          initialCameraPosition: const CameraPosition(
              target: LatLng(5.40883, 100.27715), zoom: 15)),
    );
  }
}

class BatuFeringi extends StatefulWidget {
  const BatuFeringi({super.key});

  @override
  State<BatuFeringi> createState() => _BatuFeringiState();
}

class _BatuFeringiState extends State<BatuFeringi> {
  late GoogleMapController mapController;
  final Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(const Marker(
          markerId: MarkerId('id-1'), position: LatLng(5.47362, 100.24614)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text('Google Map'),
      ),
      body: GoogleMap(
          zoomGesturesEnabled: true,
          onMapCreated: onMapCreated,
          markers: _markers,
          initialCameraPosition: const CameraPosition(
              target: LatLng(5.47362, 100.24614), zoom: 15)),
    );
  }
}

class StratiQuay extends StatefulWidget {
  const StratiQuay({super.key});

  @override
  State<StratiQuay> createState() => _StratiQuayState();
}

class _StratiQuayState extends State<StratiQuay> {
  late GoogleMapController mapController;
  final Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(const Marker(
          markerId: MarkerId('id-1'), position: LatLng(5.45846, 100.31362)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text('Google Map'),
      ),
      body: GoogleMap(
          zoomGesturesEnabled: true,
          onMapCreated: onMapCreated,
          markers: _markers,
          initialCameraPosition: const CameraPosition(
              target: LatLng(5.45846, 100.31362), zoom: 15)),
    );
  }
}

class Bayview extends StatefulWidget {
  const Bayview({super.key});

  @override
  State<Bayview> createState() => _BayviewState();
}

class _BayviewState extends State<Bayview> {
  late GoogleMapController mapController;
  final Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(const Marker(
          markerId: MarkerId('id-1'), position: LatLng(5.42203, 100.33605)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text('Google Map'),
      ),
      body: GoogleMap(
          zoomGesturesEnabled: true,
          onMapCreated: onMapCreated,
          markers: _markers,
          initialCameraPosition: const CameraPosition(
              target: LatLng(5.42203, 100.33605), zoom: 15)),
    );
  }
}

class Neoplus extends StatefulWidget {
  const Neoplus({super.key});

  @override
  State<Neoplus> createState() => _NeoplusState();
}

class _NeoplusState extends State<Neoplus> {
  late GoogleMapController mapController;
  final Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(const Marker(
          markerId: MarkerId('id-1'), position: LatLng(5.41241, 100.32850)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text('Google Map'),
      ),
      body: GoogleMap(
          zoomGesturesEnabled: true,
          onMapCreated: onMapCreated,
          markers: _markers,
          initialCameraPosition: const CameraPosition(
              target: LatLng(5.41241, 100.32850), zoom: 15)),
    );
  }
}

class Seaview extends StatefulWidget {
  const Seaview({super.key});

  @override
  State<Seaview> createState() => _SeaviewState();
}

class _SeaviewState extends State<Seaview> {
  late GoogleMapController mapController;
  final Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(const Marker(
          markerId: MarkerId('id-1'), position: LatLng(5.46383, 100.30537)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text('Google Map'),
      ),
      body: GoogleMap(
          zoomGesturesEnabled: true,
          onMapCreated: onMapCreated,
          markers: _markers,
          initialCameraPosition: const CameraPosition(
              target: LatLng(5.46383, 100.30537), zoom: 15)),
    );
  }
}

class WheelersCafe extends StatefulWidget {
  const WheelersCafe({super.key});

  @override
  State<WheelersCafe> createState() => _WheelersCafeState();
}

class _WheelersCafeState extends State<WheelersCafe> {
  late GoogleMapController mapController;
  final Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(const Marker(
          markerId: MarkerId('id-1'), position: LatLng(5.41892, 100.33654)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text('Google Map'),
      ),
      body: GoogleMap(
          zoomGesturesEnabled: true,
          onMapCreated: onMapCreated,
          markers: _markers,
          initialCameraPosition: const CameraPosition(
              target: LatLng(5.41892, 100.33654), zoom: 15)),
    );
  }
}

class MugshotCafe extends StatefulWidget {
  const MugshotCafe({super.key});

  @override
  State<MugshotCafe> createState() => _MugshotCafeState();
}

class _MugshotCafeState extends State<MugshotCafe> {
  late GoogleMapController mapController;
  final Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(const Marker(
          markerId: MarkerId('id-1'), position: LatLng(5.41854, 100.33658)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text('Google Map'),
      ),
      body: GoogleMap(
          zoomGesturesEnabled: true,
          onMapCreated: onMapCreated,
          markers: _markers,
          initialCameraPosition: const CameraPosition(
              target: LatLng(5.41854, 100.33658), zoom: 15)),
    );
  }
}
