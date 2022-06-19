import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const MessageBubble(
    this.message,
    this.isMe,
    this.username,
    this.userImage,
    this.time, {
    required this.key,
  });
  // ignore: annotate_overrides, overridden_fields
  final Key key;
  final String userImage;
  final String message;
  final bool isMe;
  final String username;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment:
              isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: isMe ? Colors.grey[500] : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(15),
                  topRight: const Radius.circular(15),
                  bottomLeft: !isMe
                      ? const Radius.circular(0)
                      : const Radius.circular(15),
                  bottomRight: isMe
                      ? const Radius.circular(0)
                      : const Radius.circular(15),
                ),
              ),
              width: 180,
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 10,
              ),
              margin: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 8,
              ),
              child: Column(
                crossAxisAlignment:
                    isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                children: [
                  Text(
                    username,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    message,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: isMe ? TextAlign.end : TextAlign.start,
                  ),
                  Text(
                    time,
                    style: const TextStyle(
                        color: Colors.black, fontStyle: FontStyle.italic),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          top: 0,
          left: !isMe ? 170 : null,
          right: isMe ? 170 : null,
          child: CircleAvatar(
            backgroundImage: NetworkImage(userImage),
          ),
        ),
      ],
      clipBehavior: Clip.none,
    );
  }
}
