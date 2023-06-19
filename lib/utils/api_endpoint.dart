class ApiEndpoint {
  static const String baseUrl = 'http://192.168.0.127/api-connection/';
  static AuthEndPoint authEndPoint = AuthEndPoint();
}

class AuthEndPoint {
  final String register = 'auth/registration.php';
  final String login = 'auth/login.php';
}
