class ChatModel {
  String message;
  String username;
  String image;
  String timestamp;
  bool isRead;
  ChatModel({
    required this.message,
    required this.username,
    required this.image,
    required this.timestamp,
    required this.isRead,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userName': username,
      'profileImage': image,
      'message': message,
      'isRead': isRead,
      'timestamp': timestamp,
    };
  }

  factory ChatModel.fromMap(Map<String, dynamic> chatData) {
    return ChatModel(
        username: chatData["userName"] ?? "",
        image: chatData["profileImage"] ?? "",
        message: chatData["message"],
        isRead: chatData["isRead"] ?? true,
        timestamp: chatData["timestamp"]);
  }
}
