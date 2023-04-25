import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_ui/provider/whatsappProvider.dart';
import 'package:whatsapp_ui/view/callScreen.dart';
import 'package:whatsapp_ui/view/chatScreen.dart';
import 'package:whatsapp_ui/view/dashScreen.dart';
import 'package:whatsapp_ui/view/splashScreen.dart';
import 'package:whatsapp_ui/view/statusScreen.dart';

void main()
{
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => WhatsappProvider(),)
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => Splesh(),
        'dash':(context) => DashScreen(),
      },
    ),
  ));
}