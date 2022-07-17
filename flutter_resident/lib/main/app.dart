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

    return _wrapWithBanner(
      GetMaterialApp(
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
      ),
    );
  }

  /// Adds banner to the [child] widget.
  Widget _wrapWithBanner(Widget child) {
    return env != EnvEnum.Prod
        ? Directionality(
            textDirection: TextDirection.ltr,
            child: Banner(
              child: child,
              location: BannerLocation.topEnd,
              message: env.shortDescription,
              color: Colors.yellow,
              textStyle: TextStyle(
                fontSize: 14,
                letterSpacing: 1.0,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
              textDirection: TextDirection.ltr,
            ),
          )
        : child;
  }
}
