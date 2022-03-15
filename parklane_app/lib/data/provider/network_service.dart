import 'package:http/http.dart' as http;

class NetworkService {
  final String baseUrl = "http://localhost:3000";
  Future<String?> postLogin(String email, String password) async {
    // baseUri.replace(path: '/login');
    Uri url = Uri.parse(baseUrl + "/login");
    print(url.toString());
    try {
      final response = await http.post(url,
          body: <String, dynamic>{"email": email, "password": password});
      return response.body;
    } catch (err) {
      print(err);
      // throw Exception(err);
    }
  }

  Future<String?> postSignUp(
      String userName, String email, String password) async {
    // baseUri.replace(path: '/signin');
    Uri url = Uri.parse(baseUrl + "/signup");

    print(url.toString());
    try {
      final response = await http.post(url, body: <String, dynamic>{
        "userName": userName,
        "email": email,
        "password": password
      });
      return response.body;
    } catch (err) {
      print(err);
      // throw Exception(err);
    }
  }

  Future<String?> getUser(String token) async {
    Uri url = Uri.parse(baseUrl + "/getSelf");
    // ! FIXME : Create function not properly written check afterwards
    try {
      final response = await http.post(url, headers: <String, String>{
        "authentication": "Bearor " + token,
      }, body: <String, dynamic>{});
      return response.body;
    } catch (err) {
      print(err);
      // throw Exception(err);
    }
  }
}