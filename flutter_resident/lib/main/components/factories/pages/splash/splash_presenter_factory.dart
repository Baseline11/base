import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_resident/main/env_enum.dart';
import 'package:flutter_resident/ui/helpers/helpers.dart';

import '../../../../../presentation/presenters/presenters.dart';
import '../../../../../ui/pages/pages.dart';

import './../../../../dev/dev.dart';
import '../../factories.dart';

FirebaseOptions? getFirebaseOptions({required EnvEnum env}) {
  switch (env) {
    case EnvEnum.Dev:
      return FirebaseOptionsDev.currentPlatform;
    case EnvEnum.Stg:
      return FirebaseOptionsDev.currentPlatform;
    case EnvEnum.Prod:
      return FirebaseOptionsDev.currentPlatform;
    default:
      return null;
  }
}

SplashPresenter makeGetxSplashPresenter({required EnvEnum env}) {
  return GetxSplashPresenter(
      loadCurrentAccount: makeLocalLoadCurrentAccount(),
      initFirebase: () async {
        await Firebase.initializeApp(
          options: getFirebaseOptions(env: env),
        );
        final pushNotificationService = PushNotificationService(
          FirebaseMessaging.instance,
        );
        await pushNotificationService.initialise();
      });
}
