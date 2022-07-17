import 'package:flutter/material.dart';
import 'package:flutter_resident/main/env_enum.dart';

import '../../../../../ui/pages/pages.dart';
import '../../factories.dart';

Widget makeSplashPage({required EnvEnum env}) {
  return IosSplashPage(
    presenter: makeGetxSplashPresenter(env: env),
  );
}
