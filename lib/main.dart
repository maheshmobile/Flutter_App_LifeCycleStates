import 'package:flutter/material.dart';
import 'package:flutter_lifecycle/lifecycle_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return LifeCycleManager(
      child: MaterialApp(
        title: "Flutter App Lifecycle states",
        home: Scaffold(
          body: Center(
            child: FlutterLogo(),
          ),
        ),
      ),

    );
  }

}