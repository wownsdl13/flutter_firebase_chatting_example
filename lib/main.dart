import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fbc/screens/entrance_page/entrance_page.dart';
import 'package:fbc/screens/entrance_page/local_utils/EntranceProvider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => EntranceProvider(), child: EntrancePage());
  }
}
