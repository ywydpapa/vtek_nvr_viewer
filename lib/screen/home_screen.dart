import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatelessWidget{
  static final LatLng nvrLatLng = LatLng(37.5233273, 126.921252);
  const HomeScreen({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: renderAppBar(),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: nvrLatLng,
          zoom: 16,
        ),
      ),
    );
  }

  AppBar renderAppBar(){
    return AppBar(
      centerTitle: true,
      title: Text('NVR 위치',
      style: TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.w700,
      ),
      ),
      backgroundColor: Colors.white,
    );
  }
}