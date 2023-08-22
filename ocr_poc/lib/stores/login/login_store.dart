import 'package:mobx/mobx.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? firebaseUser;

  /*

  @Variables

  */
  @observable
  bool isLoading = false, isGoogleLoading = false, isLogged = false;

  /*

  @Firebase methods

  */
  @action
  Future<void> googleLogin() async {
    isLoading = true;
    isGoogleLoading = true;

    GoogleSignInAccount gUser = await getGoogleuser();
    GoogleSignInAuthentication googleAuth = await gUser.authentication;

    try {
      final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );

      firebaseUser = (await _auth.signInWithCredential(credential)).user!;

      isGoogleLoading = true;
      isLogged = true;
    } catch (err) {
      isGoogleLoading = false;
      isLogged = false;
    }
    isLoading = false;
  }

  Future getGoogleuser() async {
    GoogleSignInAccount? googleUser = _googleSignIn.currentUser;
    await _googleSignIn.signInSilently();
    googleUser = (await _googleSignIn.signIn())!;
    return googleUser;
  }

  @action
  Future<void> logout() async {
    isLoading = false;
    isGoogleLoading = false;
    isLogged = false;
    await _auth.signOut();
  }
}
