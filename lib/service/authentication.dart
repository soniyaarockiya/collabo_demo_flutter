//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:google_sign_in/google_sign_in.dart';

abstract class Authentication {
  Future<String> googleSignIn();

  Future<String> phoneSignIn();
}

class BaseAuth implements Authentication {
  Future<String> googleSignIn() {}

  Future<String> phoneSignIn() {}
}
