
import 'package:disenos/pages/basico_page.dart';
import 'package:disenos/pages/botones.page.dart';
import 'package:disenos/pages/scroll_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
   statusBarColor: Color.fromRGBO(236, 98, 188, 1.0)
   ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'botones',
      routes: {

        'basico'   :   (BuildContext context) => BasicoPage(),
        'scroll'   :   (BuildContext context) => ScrollPage(),
        'botones'   :   (BuildContext context) => BotonesPage(),

      },
     
    );
  }
}