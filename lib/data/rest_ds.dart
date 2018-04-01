import 'dart:async';
import 'package:login_app/utils/network_util.dart';
import 'package:login_app/models/user.dart';
//import 'package:http/http.dart' as http;

class RestDataSource {
  NetworkUtil _netUtil = new NetworkUtil();
 /*  static final BASE_URL = "http://YOUR_BACKEND_IP/login_app_backend";
  static final LOGIN_URL = BASE_URL + "/login.php";
  static final _API_KEY = "somerandomkey"; */

  static final BASE_URL = "";
  static final LOGIN_URL = BASE_URL + "/";
//  static final _API_KEY = "somerandomkey"; 
 
  //static final BASE_URL = "http://mam.epizy.com/todo/";
  //static final LOGIN_URL = BASE_URL + "api.php/User/";
 // static final _API_KEY = "somerandomkey"; 

//static final LOGIN_URL = "http://mam.epizy.com/todo/api.php/User/";

/*   
Future<User> login(String username, String password) {
  return new Future.value();
} */

 
  Future<User> login(String username, String password) {
    
    //return _netUtil.post(LOGIN_URL, body: {
    return _netUtil.post(LOGIN_URL, body: {
     // "token" : _API_KEY,
      "username" : username,
      "password" : password
    }).then((dynamic res) {
      print(res.toString());
      if (res["error"]) throw new Exception(res["error_msg"]);
      return new User.map(res["user"]);
    });
  }
}
