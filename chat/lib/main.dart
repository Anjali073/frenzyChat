import 'package:flutter/material.dart';

import 'chats.dart';

void main() {
  runApp(MaterialApp(
      title: "Chat App",
      color: Colors.blue,
      theme:
          ThemeData(brightness: Brightness.light, primarySwatch: Colors.teal),
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Frenzy Chat",
              textDirection: TextDirection.ltr,
            ),
            leading: Icon(Icons.chat),
            centerTitle: true,
          ),
          body: MyChat())));
}

class MyChat extends StatefulWidget {
  const MyChat({super.key});

  @override
  State<MyChat> createState() => _MyChatState();
}

TextEditingController msgcontroller = TextEditingController();

class _MyChatState extends State<MyChat> {
  Msgs _message = Msgs();

  void _handleSubmitted(String text) {
    msgcontroller.clear();
    setState(() {
      msg.add(text);
      _message.key;
    });
  }

  void _Cleartext(String text) {
    msgcontroller.clear();
    setState(() {
      msg.add(text);
      _message.key;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            child: Msgs(),
          ),
          Row(children: [
            Flexible(
              child: TextField(
                  controller: msgcontroller,
                  onSubmitted: _Cleartext,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration.collapsed(
                    hintText: "Message",
                  )),
            ),
            FloatingActionButton(
              onPressed: () {
                _Cleartext(msgcontroller.text);
              },
              child: Icon(Icons.send),
            ),
          ]),
        ],
      ),
    );
  }
}
