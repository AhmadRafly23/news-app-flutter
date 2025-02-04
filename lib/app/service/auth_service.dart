import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;

  Stream<User?> get authStateChanges => _auth.authStateChanges();

  User? get currentUser => _auth.currentUser;

  String get userEmail => currentUser?.email ?? "No email available";

  Future<void> logout() async {
    await _auth.signOut();
  }
}
