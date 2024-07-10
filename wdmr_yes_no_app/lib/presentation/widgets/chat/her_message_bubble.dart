import 'package:flutter/material.dart';
import 'package:wdmr_yes_no_app/domain/entities/message.dart';

class HerMessageBubble extends StatelessWidget {
  final Message message;

  const HerMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              message.text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        _ImageBubble(
          imageUrl: message.imageUrl!,
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  const _ImageBubble({required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network( "https://stickerly.pstatic.net/sticker_pack/gGTAvC2KfPclJOIftxtZhg/3FXTB9/2/e2fa0e0f-7b26-4d8f-a0cf-198f5590c79b.png",
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('The Rock is sending a gif'),
          );
        },
      ),
    );
  }
}