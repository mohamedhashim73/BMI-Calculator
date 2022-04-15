import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wrap/MultiProviders.dart';
import 'package:wrap/home.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context)=>Age()),
          ChangeNotifierProvider(create: (context)=>Weight()),
          ChangeNotifierProvider(create: (context)=>Height()),
          ChangeNotifierProvider(create: (context)=>Gender_Type()),
        ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
