import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat.dart';
import '../models/chat.dart';
class chat_screen extends StatefulWidget{
  @override
  _chat_screenState createState() => _chat_screenState();
}

class   _chat_screenState extends State<chat_screen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context,i)=>new Column(
        children: <Widget>[
          new Divider(
            height: 10.0,
          ),
          ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(data[i].avatarurl),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  data[i].name,
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
                new Text(
                  data[i].time,
                  style: TextStyle(color:Colors.grey,fontSize: 14.0),
                )
              ],
            ),
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                data[i].message,
                style: TextStyle(color:Colors.grey,fontSize: 15.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}