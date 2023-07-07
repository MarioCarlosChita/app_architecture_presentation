class Comment{
  String id;
  String userId;
  String description;

  Comment({
    required this.userId,
    required this.description,
    required this.id,
  });

  factory Comment.from(Map<String , dynamic> map) {
    return Comment(
        userId: map['userId'],
        description: map['description'],
        id: map['id']
    );
  }
}
