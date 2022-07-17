enum EnvEnum {
  Dev,
  Stg,
  Prod,
}

extension EnvExtension on EnvEnum {
  String get shortDescription {
    switch (this) {
      case EnvEnum.Dev:
        return 'DEV';
      case EnvEnum.Stg:
        return 'STG';
      case EnvEnum.Prod:
        return 'PROD';
      default:
        return '';
    }
  }
}
