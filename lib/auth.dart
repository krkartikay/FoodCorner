import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

abstract class BaseAuth {
  
}

class User {
  User(this.idToken, this.email);
  String idToken;
  String email;
}