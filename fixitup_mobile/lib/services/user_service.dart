import 'package:http/http.dart' as http;

class UserService {
  static void getTest() async {
    final response = await http.get(Uri.parse("http://192.168.100.199:3000"));
    print(response.body);
  }
}
