import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

Future<void> signUp(BuildContext context, String email, String pass, String repeat) async {
  
  if (pass == repeat) {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: pass,
      );

    
      Navigator.pushNamed(context, '/main_page');
    } on FirebaseAuthException catch (e) {
      print(e.code);
      authErrorToast(e.code);
    } catch (e) {
      print(e.toString());
      authErrorToast("unknown-error");
    }
  } else {
    authErrorToast("different-passwords");
  }
}

Future<void> signIn(BuildContext context, String email, String pass) async {
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: pass,
    );
    // ignore: use_build_context_synchronously
    Navigator.pushNamed(context, '/main_page');
  } on FirebaseAuthException catch (e) {
    print(e.code);
    authErrorToast(e.code);
  } catch (e) {
    print(e.toString());
    authErrorToast("unknown-error");
  }
}

void authErrorToast(String errorCode) {
  String errorMsg;
  switch (errorCode) {
    // Sign up errors
    case 'weak-password':
      errorMsg = "Hasło jest zbyt słabe.";
      break;
    case 'email-already-in-use':
      errorMsg = "Konto o podanym adresie email już istnieje.";
      break;
    case 'invalid-email':
      errorMsg = "Podany adres email jest nieprawidłowy.";
      break;
    case 'different-passwords':
      errorMsg = "Podane hasła są różne.";
      break;

    // Sign in errors
    case 'user-not-found':
    case 'wrong-password':
      errorMsg = "Nieprawidłowy adres email lub hasło.";
      break;

    // Other errors
    case 'too-many-requests':
      errorMsg = "Zbyt wiele prób logowania. Spróbuj ponownie później.";
      break;

    default:
      errorMsg = "Wystąpił błąd.";
  }

  Fluttertoast.showToast(
    msg: errorMsg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 3,
    backgroundColor: Colors.red,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
