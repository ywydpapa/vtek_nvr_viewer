import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:vtek_nvr_viewer/screen/nvr_screen.dart';

class ListScreen extends StatelessWidget{
  const ListScreen({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: renderAppBar(),
    );
  }

  AppBar renderAppBar(){
    return AppBar(
      centerTitle: true,
      title: Text('NVR List',
        style: TextStyle(
          color: Colors.yellow,
          fontWeight: FontWeight.w700,
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}