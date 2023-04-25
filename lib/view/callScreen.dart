import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_ui/provider/whatsappProvider.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  WhatsappProvider? providerFalse;
  WhatsappProvider? providerTrue;

  @override
  Widget build(BuildContext context) {
    providerTrue = Provider.of<WhatsappProvider>(context, listen: true);
    providerFalse = Provider.of<WhatsappProvider>(context, listen: false);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal,
        child: Icon(Icons.add_call),
      ),
      body: Column(
        children: [
          SizedBox(height: 8),
          Container(
            height: 60,
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 1),
            child: Row(
              children: [
                SizedBox(width: 8),
                CircleAvatar(
                  backgroundColor: Colors.teal,
                  child: Transform.rotate(
                      angle: 1,
                      child: Icon(
                        Icons.link,
                        size: 25,
                        color: Colors.white,
                      )),
                  radius: 25,
                ),
                SizedBox(width: 15),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  SizedBox(height: 8),
                  Text(
                    "Create call link",
                    style: TextStyle(fontSize: 18, letterSpacing: 1),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Share a link for your WhatsApp call",
                    style: TextStyle(
                        fontSize: 13, letterSpacing: 1, color: Colors.black38),
                  ),
                ]),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Recent ",
                style: TextStyle(fontSize: 13, letterSpacing: 1,color: Colors.black38),
              ),
            ),
          ),
          SizedBox(
              height: 555,
              width: double.infinity,
              child: ListView.builder(
                  itemBuilder: (context, index) => mycall(index),
                  itemCount: 8)),
        ],
      ),
    );
  }

  Widget mycall(int index) {
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
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 8),
            Text(
              "${providerFalse?.wpList[index].name}",
              style: TextStyle(fontSize: 18, letterSpacing: 1),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Transform.rotate(
                    angle: -1,
                    child: Icon(
                      Icons.arrow_forward,
                      size: 15,
                      color: Colors.green,
                    )),
                SizedBox(width: 8),
                Text(
                  "${providerFalse?.wpList[index].time}",
                  style: TextStyle(fontSize: 12, letterSpacing: 1),
                ),
              ],
            ),
          ]),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Icon(
              Icons.videocam_rounded,
              color: Colors.green,
              size: 25,
            ),
          )
        ],
      ),
    );
  }
}
