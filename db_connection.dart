import 'package:mysql1/mysql1.dart';
import 'dart:async';

class Mysql{
  static String hostName='test-db.c4vxqmngttl3.ap-south-1.rds.amazonaws.com',
              userDb='admin',
              passwordDb='admin123',
              db='test_registration_app';
  static int port = 0;


  Mysql();
  Future<MySqlConnection> getConnection() async {
    var settings = new ConnectionSettings(
        host: hostName,
        port: port,
        user: userDb,
        password: passwordDb,
        db: db
    );
    return await MySqlConnection.connect(settings);
  }

}