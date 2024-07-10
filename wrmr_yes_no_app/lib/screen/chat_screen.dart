import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wrmr_yes_no_app/provider/chat_provider.dart';
import 'package:image_picker/image_picker.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Chat'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Consumer<ChatProvider>(
              builder: (context, chatProvider, child) {
                return ListView.builder(
                  itemCount: chatProvider.messages.length,
                  itemBuilder: (context, index) {
                    final message = chatProvider.messages[index];
                    return ListTile(
                      leading: message.isUser ? null : CircleAvatar(child: Text('Bot')),
                      trailing: message.isUser ? CircleAvatar(child: Text('Tú')) : null,
                      title: message.image != null
                          ? Image.file(message.image!)
                          : Text(message.text ?? ''),
                    );
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Escribe un mensaje...',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    final text = _controller.text;
                    if (text.isNotEmpty) {
                      Provider.of<ChatProvider>(context, listen: false).sendMessage(text);
                      _controller.clear();
                    }
                  },
                ),
                IconButton(
                  icon: Icon(Icons.photo),
                  onPressed: () async {
                    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
                    if (pickedFile != null) {
                      final imageFile = FileImage(pickedFile.path);
                      Provider.of<ChatProvider>(context, listen: false).sendImage(imageFile);
                    }
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
