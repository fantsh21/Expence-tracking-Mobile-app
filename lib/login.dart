import 'package:crypto/crypto.dart';
import 'package:mongo_dart/mongo_dart.dart';

login(List<String> args) async {
  Db db = Db('mongodb://localhost:3001/prod');
  await db.open();
}
