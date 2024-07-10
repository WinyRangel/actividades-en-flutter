import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wdmr_yes_no_app/domain/entities/message.dart';
import 'package:wdmr_yes_no_app/presentation/providers/chat_provider.dart';
import 'package:wdmr_yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:wdmr_yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:wdmr_yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(leading: const Padding(padding: EdgeInsets.all(4.0),
      child: CircleAvatar(
        backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD67Z8FQK1BTAg--lMbM4yCrQ_D8_OA1W_Hg&s'),
        ),
      ),
      title: const Text('Usuario'),
      centerTitle: false,
      ),
      body: const _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView();

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              controller: chatProvider.chatScrollController,
              itemCount: chatProvider.messages.length,
              itemBuilder: (context, index){
                final message = chatProvider.messages[index];
                return (message.fromWho == FromWho.her) 
                  ? HerMessageBubble(
                    message: message
                    )
                  : MyMessageBubble(
                    message: message
                  );
              }),
            ),  
            MessageFieldBox(onValue: chatProvider.sendMessage,)
          ],
        ),
      ),
    );
  }
}