import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN LERCLIENTE
Future<List<LerclienteRow>> performLercliente(
  Database database,
) {
  const query = '''
select * from cliente
''';
  return _readQuery(database, query, (d) => LerclienteRow(d));
}

class LerclienteRow extends SqliteRow {
  LerclienteRow(super.data);

  int get id => data['id'] as int;
  String get nome => data['nome'] as String;
  int get codigo => data['codigo'] as int;
  double get preco => data['preco'] as double;
}

/// END LERCLIENTE
