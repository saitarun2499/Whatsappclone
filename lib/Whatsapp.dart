
import 'package:flutter/material.dart';
import 'package:whatsapp/pages/call_screen.dart';
import 'package:whatsapp/pages/camera_Screen.dart';
import 'package:whatsapp/pages/chat_screen.dart';
import 'package:whatsapp/pages/status_screen.dart';
  
class Whatsapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WhatsappState();
  }
}

class _WhatsappState extends State<Whatsapp>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("WhatsApp"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            // new Ta4b(icon: new Icon(Icon.)),
            new Tab(icon: Icon(Icons.camera_alt),),
            new Tab(text: "CHATS"),
            new Tab(text: "STATUS"),
            new Tab(text: "CALLS")

          ],
        ),
        actions: <Widget>[
          Icon(Icons.search),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
          Icon(Icons.more_vert),
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new camera_screen(),
          new chat_screen(),
          new status_screen(),
          new call_screen(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme
            .of(context)
            .accentColor,
        child: new Icon(Icons.message, color: Colors.white,),
        onPressed: (){},
      ),
    );
  }
    }