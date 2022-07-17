import 'package:flutter/material.dart';

import './../app.dart';
import './../env_enum.dart';

void main() {
  runApp(App(env: EnvEnum.Dev));
}
