import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String description;
  final String uid;
  final String username;
  final String postId;
  final String datePublished;
  final String postUrl;
  final String profImgae;
  final likes;

  Post({
    required this.description,
    required this.uid,
    required this.username,
    required this.postId,
    required this.datePublished,
    required this.postUrl,
    required this.profImgae,
    required this.likes,
  });

  Map<String, dynamic> toJson() => {
        "description": description,
        "uid": uid,
        "username": username,
        "postId": postId,
        "datePublished": datePublished,
        "profImage": profImgae,
        "likes": likes,
        "postUrl": postUrl,
      };

  static Post fromSnap(DocumentSnapshot snapshot) {
    var data = snapshot.data() as Map<String, dynamic>;
    return Post(
      datePublished: data['datePublished'],
      description: data['description'],
      uid: data['uid'],
      username: data['username'],
      postId: data['postId'],
      profImgae: data['profImgae'],
      postUrl: data['postUrl'],
      likes: data['likes'],
    );
  }
}
