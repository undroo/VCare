import 'package:VCare/Widgets/large_button.dart';
import 'package:flutter/material.dart';
import 'package:dash_chat/dash_chat.dart';

class HelpScreen extends StatefulWidget {
  static const String route = '/help_screen';
  @override
  _HelpScreenState createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  List<ChatMessage> chatMessage = <ChatMessage>[];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DashChat(
          inputTextStyle: TextStyle(color: Colors.black),
          quickReplyStyle: BoxDecoration(color: Colors.black),
          inputContainerStyle: BoxDecoration(color: Colors.grey),
          inputCursorColor: Colors.black,
          inputDecoration: InputDecoration(
            fillColor: Colors.black,
          ),
          messages: chatMessage,
          onSend: (message) {
            chatMessage.add(message);
          },
          user: ChatUser(
            name: 'Onion58',
          ),
        ),
      ),
    );
  }
}
