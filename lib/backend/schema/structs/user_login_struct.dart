// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserLoginStruct extends BaseStruct {
  UserLoginStruct({
    String? usuario,
    String? email,
    String? senha,
  })  : _usuario = usuario,
        _email = email,
        _senha = senha;

  // "usuario" field.
  String? _usuario;
  String get usuario => _usuario ?? '';
  set usuario(String? val) => _usuario = val;
  bool hasUsuario() => _usuario != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "senha" field.
  String? _senha;
  String get senha => _senha ?? '';
  set senha(String? val) => _senha = val;
  bool hasSenha() => _senha != null;

  static UserLoginStruct fromMap(Map<String, dynamic> data) => UserLoginStruct(
        usuario: data['usuario'] as String?,
        email: data['email'] as String?,
        senha: data['senha'] as String?,
      );

  static UserLoginStruct? maybeFromMap(dynamic data) => data is Map
      ? UserLoginStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'usuario': _usuario,
        'email': _email,
        'senha': _senha,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'usuario': serializeParam(
          _usuario,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'senha': serializeParam(
          _senha,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserLoginStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserLoginStruct(
        usuario: deserializeParam(
          data['usuario'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        senha: deserializeParam(
          data['senha'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserLoginStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserLoginStruct &&
        usuario == other.usuario &&
        email == other.email &&
        senha == other.senha;
  }

  @override
  int get hashCode => const ListEquality().hash([usuario, email, senha]);
}

UserLoginStruct createUserLoginStruct({
  String? usuario,
  String? email,
  String? senha,
}) =>
    UserLoginStruct(
      usuario: usuario,
      email: email,
      senha: senha,
    );
