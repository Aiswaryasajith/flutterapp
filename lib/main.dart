import 'package:flutter/material.dart';
import 'package:sample_project/home.dart';

main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(
        primaryColor: Colors.indigo[50],
        ),
        
    );
  }
}



