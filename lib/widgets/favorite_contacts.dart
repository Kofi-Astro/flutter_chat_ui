import 'package:flutter/material.dart';

import '../models/message_model.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Favorite contacts',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0),
                ),
                IconButton(
                  icon: Icon(Icons.more_horiz),
                  color: Colors.blueGrey,
                  iconSize: 30.0,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            //color: Colors.blue,
            height: 120.0,
            child: ListView.builder(
              padding: EdgeInsets.only(
                left: 10.0,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: favorites.length,
              itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(favorites[index].imageUrl),
                        radius: 35.0,
                      ),
                      SizedBox(height: 6),
                      Text(
                        favorites[index].name,
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
