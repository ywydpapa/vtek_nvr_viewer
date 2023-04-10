import 'package:flutter/material.dart';
import 'package:vtek_nvr_viewer/screen/home_screen.dart';
import 'package:vtek_nvr_viewer/screen/nvr_screen.dart';

class ListScreen extends StatelessWidget{
  const ListScreen({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: renderAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(child: _EntryButton()),
            ],
          ),
        ),
      ),
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

class _EntryButton extends StatelessWidget {
  const _EntryButton({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => NvrView(),
            ),
          );
        },
          child: Text('Office NVR'),
        ),
      ],
    );
  }
}