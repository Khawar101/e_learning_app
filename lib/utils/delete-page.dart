import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Page'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Replace with your actual message count
              reverse: true, // To show the latest messages at the bottom
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: MessageBubble(
                    isMe: index % 2 == 0, // Just for demo, you can modify this logic
                    message: 'This is message $index',
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            color: Colors.grey[200],
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type your message...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    // TODO: Implement sending the message
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final bool isMe;
  final String message;

  MessageBubble({required this.isMe, required this.message});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: isMe ? Colors.blue : Colors.grey[300],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
              bottomLeft: isMe ? Radius.circular(12.0) : Radius.circular(0.0),
              bottomRight: isMe ? Radius.circular(0.0) : Radius.circular(12.0),
            ),
          ),
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
          margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          child: Text(
            message,
            style: TextStyle(
              color: isMe ? Colors.white : Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';
