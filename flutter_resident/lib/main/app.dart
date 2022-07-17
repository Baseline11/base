import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import './../ui/components/components.dart';
import './../ui/helpers/helpers.dart';
import './../ui/pages/pages.dart';

import './components/components.dart';
import './env_enum.dart';

class App extends StatelessWidget {
  final EnvEnum env;

  App({required this.env});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light,
    );

    AppConfig.setOrientation(portraitMode: true);

    return GetMaterialApp(
      title: 'Resident',
      debugShowCheckedModeBanner: false,
      theme: makeAppTheme(),
      initialRoute: SplashPage.routeName,
      getPages: [
        GetPage(
          name: SplashPage.routeName,
          page: () => makeSplashPage(env: env),
          transition: Transition.fade,
        ),
        GetPage(
          name: SignUpPage.routeName,
          page: makeSignUpPage,
        ),
      ],
    );
  }
}
