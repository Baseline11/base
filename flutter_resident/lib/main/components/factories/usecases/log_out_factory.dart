import './../../../../data/usecases/usecases.dart';
import './../../../../domain/domain.dart';

import './../factories.dart';
import './../../composites/composites.dart';

FirebaseLogOut makeFirebaseLogOut() {
  return FirebaseLogOut(
    authRepository: makeAuthRepository(),
  );
}

LocalLogOut makeLocalLogOut() {
  return LocalLogOut(
    deleteSecureCacheStorage: makeSecureStorageAdapter(),
  );
}

LogOut makeGlobalLogOut() {
  return GlobalLogOut(
    remote: makeFirebaseLogOut(),
    local: makeLocalLogOut(),
  );
}
