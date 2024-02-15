import 'package:sqflite/sqflite.dart';

/// BEGIN INCLUIRREG
Future performIncluirreg(
  Database database, {
  String? nome,
  int? codigo,
  double? preco,
}) {
  final query = '''
INSERT INTO cliente (nome, codigo, preco) VALUES ('$nome', '$codigo', $preco);
''';
  return database.rawQuery(query);
}

/// END INCLUIRREG
