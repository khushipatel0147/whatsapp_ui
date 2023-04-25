import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_ui/provider/whatsappProvider.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  WhatsappProvider? providerFalse;
  WhatsappProvider? providerTrue;

  @override
  Widget build(BuildContext context) {
    providerFalse = Provider.of<WhatsappProvider>(context, listen: false);
    providerTrue = Provider.of<WhatsappProvider>(context, listen: true);
    return Scaffold(
        body: ListView.builder(
            itemBuilder: (context, index) => mychat(index),
            itemCount: providerFalse?.wpList.length),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.teal,
          child: Icon(Icons.chat),
        ));
  }

  Widget mychat(int index) {
    return Container(
      height: 60,
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 1),
      child: Row(
        children: [
          SizedBox(width: 8),
          CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("${providerFalse?.wpList[index].path}"),
            radius: 25,
          ),
          SizedBox(width: 15),
          Container(
            width: 280,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    "${providerFalse?.wpList[index].name}",
                    style: TextStyle(fontSize: 18, letterSpacing: 1),
                  ),
                  Spacer(),
                  Text(
                    "${providerFalse?.wpList[index].time}",
                    style: TextStyle(
                        fontSize: 12, letterSpacing: 1, color: Colors.black38),
                  ),
                  SizedBox(width: 8),
                ],
              ),
              SizedBox(height: 8),
              Text(
                "${providerFalse?.wpList[index].msg}",
                style: TextStyle(
                    fontSize: 13, letterSpacing: 1, color: Colors.black38),
              ),
            ]),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
