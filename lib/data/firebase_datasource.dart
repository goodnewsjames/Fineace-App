import 'package:fineace/app_barrels.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseDatasource {
  FirebaseDatasource({required this.firebaseAuth});
  final FirebaseAuth firebaseAuth;

  Future<bool> signUp({
    required String email,
    required String password,
  }) async {
    try {
      final result = await firebaseAuth
          .createUserWithEmailAndPassword(
            email: email,
            password: password,
          );
      if (result.user != null) {
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<UserCredential?> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await firebaseAuth
          .signInWithEmailAndPassword(
            email: email,
            password: password,
          );
      if (userCredential.user != null) {
        return userCredential;
      }
      return null;
    } catch (e) {
      return null;
    }
  }




Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return await firebaseAuth.signInWithCredential(credential);
}

}
