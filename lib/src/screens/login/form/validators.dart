import 'package:form_field_validator/form_field_validator.dart';

final loginEmailValidator = MultiValidator([
  RequiredValidator(errorText: 'usuario es requerido'),
  EmailValidator(errorText: 'Ingresa un email válido')
]);
final loginPasswordValidator = MultiValidator([
  RequiredValidator(errorText: 'Contraseña es requerida'),
  MinLengthValidator(8, errorText: 'password debe tener al menos 8 dígitos'),
  PatternValidator(r'(?=.*?[#?!@$%^&*-])',
      errorText: 'Password debe contener al menos un caracter especial')
]);
