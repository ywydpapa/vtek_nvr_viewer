import 'package:flutter/material.dart';

class FrontgateWidget extends StatefulWidget {
  const FrontgateWidget({Key? key}) : super(key: key);

  @override
  _FrontgateWidgetState createState() => _FrontgateWidgetState();
}

class _FrontgateWidgetState extends State<FrontgateWidget>
    with TickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF1E2429),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4B39EF), Color(0xFFEE8B60)],
            stops: [0, 1],
            begin: AlignmentDirectional(1, -1),
            end: AlignmentDirectional(-1, 1),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: Text(
                'VisionTek NVR Viewer',
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 120),
              child: Text(
                'Click Here!!',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
