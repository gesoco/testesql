import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class TestandoSQLLiteAuthUser {
  TestandoSQLLiteAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserLoginStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<TestandoSQLLiteAuthUser> testandoSQLLiteAuthUserSubject =
    BehaviorSubject.seeded(TestandoSQLLiteAuthUser(loggedIn: false));
Stream<TestandoSQLLiteAuthUser> testandoSQLLiteAuthUserStream() =>
    testandoSQLLiteAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
