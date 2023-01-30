import 'package:flutter/material.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:flutter_vlc_player/src/vlc_player_controller.dart';

class NvrView extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NVR Viewer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'VisionTek NVR Viewer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  VlcPlayerController _vlcViewController = new VlcPlayerController.network(
    "rtsp://coredjk:core2020@swc9004.iptime.org:554/Streaming/Channels/102",
    autoPlay: true,
  );
  VlcPlayerController _vlcViewController2 = new VlcPlayerController.network(
    "rtsp://coredjk:core2020@swc9004.iptime.org:554/Streaming/Channels/202",
    autoPlay: true,
  );
  VlcPlayerController _vlcViewController3 = new VlcPlayerController.network(
    "rtsp://coredjk:core2020@swc9004.iptime.org:554/Streaming/Channels/302",
    autoPlay: true,
  );VlcPlayerController _vlcViewController4 = new VlcPlayerController.network(
    "rtsp://coredjk:core2020@swc9004.iptime.org:554/Streaming/Channels/402",
    autoPlay: true,
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new VlcPlayer(
              controller: _vlcViewController,
              aspectRatio: 16 / 9,
              placeholder: Text("VisionTek"),
            ),
            new VlcPlayer(
              controller: _vlcViewController2,
              aspectRatio: 16/9,
              placeholder: Text("NVR Viewer"),
            ),
            new VlcPlayer(
              controller: _vlcViewController3,
              aspectRatio: 16/9,
              placeholder: Text("NVR Viewer"),
            ),
          ],
        ),
      ),
    );
  }
}
