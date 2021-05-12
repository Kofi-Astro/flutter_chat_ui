import 'package:flutter/material.dart';

import './widgets/favorite_contacts.dart';
import './widgets/category_selector.dart';
import 'widgets/recent_chat.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30.0,
          onPressed: () {},
        ),
        title: Text(
          'Chats',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 30.0,
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          CategorySelector(),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0))),
            child: Column(
              children: [
                FavoriteContacts(),
                RecentChat(),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
