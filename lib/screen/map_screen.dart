import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:vtek_nvr_viewer/screen/nvr_screen.dart';

class MapScreen extends StatelessWidget{
  static final LatLng nvrLatLng = LatLng(35.174617, 129.128243);
  static final Marker marker = Marker(
    markerId: MarkerId('nvrmark'),
    position: nvrLatLng,
  );

  static final Circle circle = Circle(
    circleId: CircleId('nvrCircle'),
    center: nvrLatLng,
    fillColor: Colors.blue.withOpacity(0.5),
    radius: 100,
    strokeColor: Colors.blue,
    strokeWidth: 1,
  );

  const MapScreen({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: renderAppBar(),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: nvrLatLng,
          zoom: 16,
        ),
        myLocationButtonEnabled: true,
        markers: Set.from([marker]),
        onTap: (cordinate){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NvrView()),
          );
        },
        circles: Set.from([circle]),
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
  Future<String> checkPermission() async{
    final isLocationEnabled = await Geolocator.isLocationServiceEnabled();

    if (!isLocationEnabled){
      return '위치 서비스 활성화가 필요합니다.';
    }
    LocationPermission checkedPermission = await Geolocator.checkPermission();
    if (checkedPermission == LocationPermission.denied){
      checkedPermission = await Geolocator.requestPermission();
      if (checkedPermission == LocationPermission.denied){
        return '위치 서비스 활성화가 필요합니다.';
      }
    }
    if (checkedPermission == LocationPermission.deniedForever){
      return '앱의 위치 권한 설정이 필요합니다.';
    }
    return '위치 권한이 허가되었습니다.';
  }
}