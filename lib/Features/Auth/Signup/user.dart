import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class user extends HiveObject {
  @HiveField(0)
  String username;

  @HiveField(1)
  String password;

  user({required this.username, required this.password});
}
