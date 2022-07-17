import 'package:flutter/material.dart';

import './../app.dart';
import './../env_enum.dart';

void main() {
  // To do in the Future: use FlutterNativeSplash.removeAfter(...)
  runApp(App(
    env: EnvEnum.Dev,
  ));
}
