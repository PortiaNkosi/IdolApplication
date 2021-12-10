
import 'package:idol_application/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import '../config.dart';

class PayslipService extends Services {
  PayslipService() {
    url = '${Config.url + 'projects'}';
  }

  Future<http.Response> status(String id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String stringValue = prefs.getString('token');
    final respose = await http.get(
        'https://app.idolconsulting.co.za/idols/projects/status/' + id,
        headers: {" Accept": "Application/json",
          'X_TOKEN': stringValue});

    if (respose.statusCode == 200) {
      return respose;
    }
  }

}
