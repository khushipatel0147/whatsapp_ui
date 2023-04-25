import 'package:flutter/cupertino.dart';
import 'package:whatsapp_ui/provider/whatsappModal.dart';

class WhatsappProvider extends ChangeNotifier
{
  List<WhatsappModal> wpList=[
    WhatsappModal(name: "Mummma",path:"assets/images/12.png" ,time:"05:00 AM ",msg:"Dikra Call kar ..." ),
    WhatsappModal(name: "Deduuu",path: "assets/images/12.png",time:"05:30 AM",msg:"Aaj Dinner par javanu chhe?"),
    WhatsappModal(name: "PSI Patel",path: "assets/images/4.jpg",time: "11:07 PM",msg:"Hello KK"),
    WhatsappModal(name: "Dr.Kalariya",path: "assets/images/8.jpg",time: "10:00 PM",msg:"How r u Dear?" ),
    WhatsappModal(name: "Er.Khushi",path: "assets/images/7.jpg",time: "9:37 PM",msg:"I'M Software Engineer" ),
    WhatsappModal(name: "Plumber Choudhary",path:"assets/images/1.png",time: "8:11 PM",msg:"Send me Total Amount of Tap" ),
    WhatsappModal(name: "Advocate Lathiya",path: "assets/images/10.jpg",time:"5:07 PM" ,msg:"Congratulations !" ),
    WhatsappModal(name: "My P.a",path: "assets/images/3.jpg",time: "Yesterday ",msg:"Ma'am Your all deatils Clear Now." ),
    WhatsappModal(name: "Talati Pinki",path: "assets/images/2.jpg",time:"Yesterday" ,msg:"hey KK.." ),
    WhatsappModal(name: "GEB Babariya",path: "assets/images/12.png",time:"Yesterday",msg:"...." ),
    WhatsappModal(name: "Teacher 12th Science",path: "assets/images/9.jpg",time:"Yesterday" ,msg:"Result is Good" ),
    WhatsappModal(name: "Dy.sp Jebliya",path:"assets/images/6.jpg" ,time:"22/4/23" ,msg:"Hello" ),
    WhatsappModal(name: "Bestudo",path:"assets/images/12.png" ,time:"22/4/23" ,msg:"Khushu Where r u?"),
    WhatsappModal(name: "Jaduuuu",path: "assets/images/5.jpg",time:"21/4/23" ,msg:"Km chhe ?"),
    WhatsappModal(name: "Dolly",path: "assets/images/12.png",time:"20/4/23" ,msg: "Hey Dear..."),
  ];
}