import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'view/screens/addcontact.dart';
import 'view/screens/chat_page.dart';
import 'view/screens/homepage.dart';
import 'view/screens/loging.dart';


import 'view/screens/verifycode.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/Login': (context) => const Login(),
        '/VerifyCode': (context) => const VerifyCode(),
        
        '/HomePage': (context) => const HomePage(),
        '/AddContact': (context) => AddContact(),
        '/ChatPage': (context) => const ChatPage(),
      },
      home: const Login(),
    );
  }
}
