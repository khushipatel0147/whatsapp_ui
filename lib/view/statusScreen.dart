import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_ui/provider/whatsappProvider.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  WhatsappProvider? providerFalse;
  WhatsappProvider? providerTrue;

  @override
  Widget build(BuildContext context) {
    providerTrue = Provider.of<WhatsappProvider>(context, listen: true);
    providerFalse = Provider.of<WhatsappProvider>(context, listen: false);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 5),

          Container(
            height: 60,
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 1),
            child: Row(
              children: [
                SizedBox(width: 8),
                Stack(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("assets/images/15.png"),
                      radius: 25,
                    ),

                    Positioned(bottom: 0,right: -2,child: Icon(Icons.add_circle,color: Colors.teal,))

                  ],

                ),
                SizedBox(width: 15),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  SizedBox(height: 8),
                  Text(
                    "My Status",
                    style: TextStyle(fontSize: 18, letterSpacing: 1),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Tap to add Status Update",
                    style: TextStyle(fontSize: 12, letterSpacing: 1,color: Colors.black38),
                  ),
                ]),


              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Recent Updates",
                style: TextStyle(fontSize: 13, letterSpacing: 1,color: Colors.black38),
              ),
            ),
          ),

          SizedBox(
            height:550,width: double.infinity,
            child: ListView.builder(
                itemBuilder: (context, index) => mystatus(index),
                itemCount: 12),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {

      },backgroundColor: Colors.teal,child: Icon(Icons.camera_alt_outlined),),
    );
  }

  Widget mystatus(int index) {
    return Container(
      height: 60,
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 1),
      child: Row(
        children: [
          SizedBox(width: 8),
          Container(
            alignment: Alignment.center,
            height: 50,width: 50,
            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.green,),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("${providerFalse?.wpList[index].path}"),
              radius: 23,
            ),
          ),
          SizedBox(width: 15),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 8),
            Text(
              "${providerFalse?.wpList[index].name}",
              style: TextStyle(fontSize: 18, letterSpacing: 1),
            ),
            SizedBox(height: 10),
            Text(
              "${providerFalse?.wpList[index].time}",
              style: TextStyle(fontSize: 12, letterSpacing: 1),
            ),
          ]),


        ],
      ),
    );
  }
}
