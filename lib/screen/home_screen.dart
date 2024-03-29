import 'package:flutter/material.dart';
import 'package:vtek_nvr_viewer/screen/map_screen.dart';
import 'package:vtek_nvr_viewer/screen/list_screen.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blue[100]!,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(child: _Logo()),
              Expanded(child: _Image()),
              Expanded(child: _EntryButton()),
            ],
          ),
        ),
      ),
    );
  }
}

class _Logo extends StatelessWidget{
  const _Logo({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 12.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.videocam,
              color: Colors.white,
              size: 40.0,
            ),
            SizedBox(width: 12.0),
            Text(
                'NVR Viewer',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                letterSpacing: 4.0,
               ),
             ),
           ],
         ),
       ),
      ),
    );
  }
}

class _Image extends StatelessWidget{
  const _Image({Key? key}): super(key: key);
  @override
  Widget build(BuildContext context){
    return Center(
      child: Image.asset('lib/assets/images/logo.png'),
    );
  }
}

class _EntryButton extends StatelessWidget {
  const _EntryButton({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => MapScreen(),
            ),
          );
        },
          child: Text('View NVR Map'),
        ),
        ElevatedButton(onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => ListScreen(),
            ),
          );
        },
          child: Text('View NVR List'),
        ),
      ],
    );
  }
}