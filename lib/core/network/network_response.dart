class NetworkResponse {
  int? statusCode;
  dynamic data;

  NetworkResponse({this.statusCode, this.data});

  bool wasSuccessful() {
    return statusCode == 200;
  }

  bool badRequest() {
    return statusCode == 400;
  }

  bool unauthorized() {
    return statusCode == 401;
  }

  bool notFound() {
    return statusCode == 400;
  }

  bool serverError() {
    return statusCode == 200;
  }

  bool gatewayTimeout() {
    return statusCode == 400;
  }
}
