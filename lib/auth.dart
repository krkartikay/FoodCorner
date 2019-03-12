import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

abstract class BaseAuth {
  User currentUser();
  Future<dynamic> signIn(String email, String password);
  Future<dynamic> createUser(String email, String password);
  void signOut();
}

class User {
  User(this.idToken, this.email);
  String idToken;
  String email;
}

class Auth implements BaseAuth {
  final String apiSignupUrl =
      "https://www.googleapis.com/identitytoolkit/v3/relyingparty/signupNewUser?key=AIzaSyBsVQCZxU0aszocRr8XzFg56H5SVrcw1iY";
  final String apiLoginUrl =
      "https://www.googleapis.com/identitytoolkit/v3/relyingparty/verifyPassword?key=AIzaSyBsVQCZxU0aszocRr8XzFg56H5SVrcw1iY";


  bool loggedIn = false;
  User _currentUser;

  @override
  Future<dynamic> createUser(String email, String password) {
    return http.Client().post(apiSignupUrl, body: json.encode({
      'email':email,
      'password':password,
      'returnSecureToken':true,
    })).then((response) {
      Map<String, dynamic> res = json.decode(response.body);
      if (res.containsKey("error")) {
        loggedIn = false;
        throw(res["error"]["message"]);
      } else {
        loggedIn = true;      
        _currentUser = new User(res['idToken'], email);
      }
    });
  }

  @override
  User currentUser() {
    return _currentUser;
  }

  @override
  Future<dynamic> signIn(String email, String password) {
    return http.Client().post(apiLoginUrl, body: json.encode({
      'email':email,
      'password':password,
      'returnSecureToken':true,
    })).then((response) {
      Map<String, dynamic> res = json.decode(response.body);
      if (res.containsKey("error")) {
        loggedIn = false;
        throw(res["error"]["message"]);
      } else {
        loggedIn = true;
        _currentUser = new User(res['idToken'], email);
      }
    });
  }

  @override
  void signOut() {
    _currentUser = null;
    return;
  }
}