import 'package:digbank/core/network/network_interface.dart';
import 'package:digbank/core/network/network_response.dart';
import 'package:http/http.dart' as http;

class HttpNetwork implements NetworkInterface {
  @override
  int get networkTimeout => 30;

  Duration get timeout => Duration(seconds: networkTimeout);

  @override
  Future<NetworkResponse> doGet(String url) async {
    final response = await http.get(Uri.parse(''));
    final NetworkResponse networkResponse =
        NetworkResponse(statusCode: response.statusCode, data: response.body);
    return networkResponse;
  }

  @override
  Future<NetworkResponse> doPost(String url) async{
   final response = await http.post(Uri.parse(''));
    final NetworkResponse networkResponse =
        NetworkResponse(statusCode: response.statusCode, data: response.body);
    return networkResponse;
  }
}
