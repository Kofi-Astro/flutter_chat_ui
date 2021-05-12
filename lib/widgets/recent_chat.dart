import 'package:flutter/material.dart';

import '../models/message_model.dart';

class RecentChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (BuildContext context, int index) {
            final Message chat = chats[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 35.0,
                        backgroundImage: AssetImage(
                          chat.sender.imageUrl,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(chat.sender.name),
                            Text(chat.text),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(chat.time),
                      Container(
                        height: 30,
                        child: Text('NEW'),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.elliptical(10, 10),
                            bottomRight: Radius.elliptical(10, 10),
                            topLeft: Radius.elliptical(10, 10),
                            topRight: Radius.elliptical(10, 10),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
