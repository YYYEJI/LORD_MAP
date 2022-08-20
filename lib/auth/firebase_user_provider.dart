import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class LordMapFirebaseUser {
  LordMapFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

LordMapFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<LordMapFirebaseUser> lordMapFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<LordMapFirebaseUser>(
        (user) => currentUser = LordMapFirebaseUser(user));
