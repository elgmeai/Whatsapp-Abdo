import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
FireBaseProvider fireBaseProvider =FireBaseProvider();
class FireBaseProvider {
  void sendcodetoyourphone(phonenumbe,context) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phonenumbe,
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) {},
      timeout: const Duration(seconds: 20),
      codeAutoRetrievalTimeout: (String verificationId)async {
     await FirebaseAuth.instance.verifyPhoneNumber(phoneNumber: phonenumbe,
      verificationCompleted: (phoneAuthCredential) {
       
     }, verificationFailed: (error) {
       
     }, codeSent: (verificationId, forceResendingToken) {
       
     }, codeAutoRetrievalTimeout: (verificationId) {
       
     });
      },
      
    );
    Navigator.of(context).pushReplacementNamed('/VerifyCode');
  }

  void enterthecode(context, codesent) async {try {
    await FirebaseAuth.instance.verifyPhoneNumber(
      verificationCompleted: (PhoneAuthCredential credential) async {},
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) async {
        // Save the verification ID for future use
        String smsCode = codesent; // Code input by the user
        PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verificationId,
          smsCode: smsCode,
        );
        // Sign the user in with the credential
        await FirebaseAuth.instance.signInWithCredential(credential);
        if (FirebaseAuth.instance.currentUser != null) {
          Navigator.of(context).pushReplacementNamed('/HomePage');
        }
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$e')));
  }
    
  }
}
