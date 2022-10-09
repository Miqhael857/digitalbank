import 'package:digbank/core/network/network_response.dart';

abstract class NetworkInterface {
  //timeout int seconds
  int get networkTimeout;

  //for Get requests
  Future<NetworkResponse> doGet(
    String url,
  );

  //for Post requests
  Future<NetworkResponse> doPost(
    String url,
  );
}
