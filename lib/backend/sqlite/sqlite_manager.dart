import 'package:flutter/foundation.dart';

import '/backend/sqlite/init.dart';
import 'queries/read.dart';
import 'queries/update.dart';

import 'package:sqflite/sqflite.dart';
export 'queries/read.dart';
export 'queries/update.dart';

class SQLiteManager {
  SQLiteManager._();

  static SQLiteManager? _instance;
  static SQLiteManager get instance => _instance ??= SQLiteManager._();

  static late Database _database;
  Database get database => _database;

  static Future initialize() async {
    if (kIsWeb) {
      return;
    }
    _database = await initializeDatabaseFromDbFile(
      'cliente_d_b',
      'clienteloja.db',
    );
  }

  /// START READ QUERY CALLS

  Future<List<LerclienteRow>> lercliente() => performLercliente(
        _database,
      );

  /// END READ QUERY CALLS

  /// START UPDATE QUERY CALLS

  Future incluirreg({
    String? nome,
    int? codigo,
    double? preco,
  }) =>
      performIncluirreg(
        _database,
        nome: nome,
        codigo: codigo,
        preco: preco,
      );

  /// END UPDATE QUERY CALLS
}
