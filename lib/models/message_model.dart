import './user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

// YOU - Current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/kay.jpg',
);

// USERS
final User aseye = User(
  id: 1,
  name: 'Aseye',
  imageUrl: 'assets/images/aseye.jpg',
);

final User ashilevi = User(
  id: 2,
  name: 'Ashilevi',
  imageUrl: 'assets/images/ashilevi.jpg',
);

final User grace = User(
  id: 3,
  name: 'Grace',
  imageUrl: 'assets/images/grace.jpg',
);

final User love = User(
  id: 4,
  name: 'Love',
  imageUrl: 'assets/images/love.jpg',
);

List<User> favorites = [
  aseye,
  ashilevi,
  grace,
  love,
  aseye,
  ashilevi,
  grace,
  love,
];

List<Message> chats = [
  Message(
    sender: aseye,
    time: '4:30pm',
    text: 'How you doing, I hope you are',
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: love,
    time: '4:30pm',
    text: 'How you doing',
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: grace,
    time: '4:30pm',
    text: 'How you doing',
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: ashilevi,
    time: '4:30pm',
    text: 'How you doing',
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: aseye,
    time: '4:30pm',
    text: 'How you doing',
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: aseye,
    time: '4:30pm',
    text: 'How you doing',
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: love,
    time: '4:30pm',
    text: 'How you doing',
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: aseye,
    time: '4:30pm',
    text: 'How you doing',
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: ashilevi,
    time: '4:30pm',
    text: 'How you doing',
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: love,
    time: '4:30pm',
    text: 'How you doing',
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: grace,
    time: '4:30pm',
    text: 'How you doing',
    isLiked: true,
    unread: false,
  ),
];

// Example message in chat screen
List<Message> messages = [
  Message(
    sender: aseye,
    time: '4:30pm',
    text: 'How you doing',
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: love,
    time: '4:30pm',
    text: 'How you doing',
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: ashilevi,
    time: '4:30pm',
    text: 'How you doing',
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: grace,
    time: '4:30pm',
    text: 'How you doing',
    isLiked: true,
    unread: false,
  ),
];
