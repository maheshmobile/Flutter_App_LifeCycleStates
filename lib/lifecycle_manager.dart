import 'package:flutter/material.dart';

class LifeCycleManager extends StatefulWidget {

  final Widget child;
  LifeCycleManager({Key key, this.child}) : super(key: key);
  
  _LifeCycleManagerState createState() => _LifeCycleManagerState();

}

class _LifeCycleManagerState extends State<LifeCycleManager> with WidgetsBindingObserver {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return widget.child;
  }

  @override
  void initState() {
    super.initState();
    print('app launched');
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    print('Lifecycle state = $state');
  }

}

