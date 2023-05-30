import 'package:e_learning_app/Home-Screens/drawer_page.dart';
import 'package:e_learning_app/utils/app_utils.dart';
import 'package:e_learning_app/utils/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPageScreen extends StatefulWidget {
  const ChatPageScreen({super.key});

  @override
  State<ChatPageScreen> createState() => _ChatPageScreenState();
}

class _ChatPageScreenState extends State<ChatPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerHeaderPage(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.vertical_distribute_sharp,
                color: Colors.black54,
                size: 18,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text(
          "Chats",
          textAlign: TextAlign.center,
          style: GoogleFonts.ibmPlexSans(
              fontSize: 18,
              color: const Color(0xff4873a6).withOpacity(0.7),
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            CustomTextFormField(
              hintText: 'Search',
            ),
            const SizedBox(height: 14),
            const ButtonText(text: 'My Groups', color: Colors.black),
            const SizedBox(height: 14),
            SizedBox(
              child: SizedBox(
                height: 80,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10, // Replace with your actual item count
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.red,
                            backgroundImage:
                                AssetImage('assets/images/tree.jpg'),
                          ),
                          SizedBox(height: 3),
                          CustomText(
                              text: 'Group Name',
                              size: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                          SizedBox(height: 3),
                          CustomText(
                              text: 'Description',
                              size: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54)
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 14),
            const ButtonText(text: 'All Chats', color: Colors.black),
            const SizedBox(height: 14),
            Expanded(
              child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const ChatPage())));
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 22,
                                  backgroundColor: Colors.red,
                                  backgroundImage:
                                      AssetImage('assets/images/tree.jpg'),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomText(
                                        text: 'Contact Name',
                                        size: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                    SizedBox(height: 3),
                                    CustomText(
                                        text: 'Subject name',
                                        size: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54)
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomText(
                                    text: '23/9/2023',
                                    size: 10,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54)
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

// messages page

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
            size: 18,
          ),
        ),
        title: Text(
          "Name",
          textAlign: TextAlign.center,
          style: GoogleFonts.ibmPlexSans(
              fontSize: 18,
              color: const Color(0xff4873a6).withOpacity(0.7),
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Replace with your actual message count
              reverse: true, // To show the latest messages at the bottom
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MessageBubble(
                    isMe: index % 2 ==
                        0, // Just for demo, you can modify this logic
                    message: 'This is message $index',
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            color: Colors.grey[200],
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type your message...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {},
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

  const MessageBubble({super.key, required this.isMe, required this.message});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: isMe ? Colors.blue : Colors.grey[300],
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(12.0),
              topRight: const Radius.circular(12.0),
              bottomLeft: isMe
                  ? const Radius.circular(12.0)
                  : const Radius.circular(0.0),
              bottomRight: isMe
                  ? const Radius.circular(0.0)
                  : const Radius.circular(12.0),
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
          margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
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
