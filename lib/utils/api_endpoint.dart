class ApiEndpoint {
  static final String baseUrl = 'http://restapi.adequateshop.com/api/';
  static AuthEndPoint authEndPoint = AuthEndPoint();
}

class AuthEndPoint {
  final String register = 'authaccount/registration';
  final String login = 'authaccount/login';
}
