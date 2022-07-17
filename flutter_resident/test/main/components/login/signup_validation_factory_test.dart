import 'package:test/test.dart';

import 'package:flutter_resident/main/components/factories/factories.dart';
import 'package:flutter_resident/validation/validators/validators.dart';

void main() {
  test('Should return the correct validations', () {
    final validations = makeSignUpValidations();

    expect(
      validations,
      [
        RequiredFieldValidation('username'),
        MinLengthValidation(field: 'username', size: 3),
        RequiredFieldValidation('first_name'),
        MinLengthValidation(field: 'first_name', size: 3),
        RequiredFieldValidation('last_name'),
        MinLengthValidation(field: 'last_name', size: 3),
        RequiredFieldValidation('email'),
        EmailValidation('email'),
      ],
    );
  });
}
