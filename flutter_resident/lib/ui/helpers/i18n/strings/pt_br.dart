import './strings.dart';

class PtBr implements Translations {
  SignUpTranslation signUp = PtBrSignUp();

  String get msgEmailInUse => 'O email já está em uso';
  String get msgInvalidCredentials => 'Credenciais inválidas';
  String get msgInvalidField => 'Campo inválido';
  String get msgRequiredField => 'Campo obrigatório';
  String get msgUnexpected =>
      'Algo errado aconteceu. Tente novamente em breve.';

  String get addAccount => 'Criar conta';
  String get alreadyHaveAnAccount => 'Já tem uma conta?';
  String get confirmPassword => 'Confirmar senha';
  String get dontHaveAnAccount => 'Não tem uma conta?';
  String get email => 'Email';
  String get firstName => 'Nome';
  String get joinUs => 'Junt-se a Nós!';
  String get enter => 'Entrar';
  String get lastName => 'Sobrenome';
  String get login => 'Login';
  String get name => 'Name';
  String get password => 'Senha';
  String get pleaseWait => 'Por favor, aguarde...';
  String get username => 'Usuário';
  String get reload => 'Recarregar';
  String get welcomeBack => 'Bem-vinde de Volta';
}
