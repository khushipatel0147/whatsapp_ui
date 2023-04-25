import 'package:flutter/material.dart';
import 'package:whatsapp_ui/view/callScreen.dart';
import 'package:whatsapp_ui/view/chatScreen.dart';
import 'package:whatsapp_ui/view/statusScreen.dart';

class DashScreen extends StatefulWidget {
  const DashScreen({Key? key}) : super(key: key);

  @override
  State<DashScreen> createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.teal.shade800,
          title: Text("WhatsApp",style: TextStyle(color: Colors.white,fontSize: 25,letterSpacing: 1,fontWeight: FontWeight.bold),),
          actions: [
            Icon(Icons.camera_alt_outlined,size: 25,color: Colors.white,),
            SizedBox(width: 15),
            Icon(Icons.search_rounded,size: 25,color: Colors.white,),
            SizedBox(width: 10),
            Icon(Icons.more_vert,size: 25,color: Colors.white,),
            SizedBox(width: 15),
          ],
          bottom:TabBar(
            tabs: [
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALL"),
            ],
            indicatorColor: Colors.white,
          ),
        ),
        body: TabBarView(
          children: [
            ChatScreen(),
            StatusScreen(),
            CallScreen(),
          ],
        ),
      )),
    );
  }
}
