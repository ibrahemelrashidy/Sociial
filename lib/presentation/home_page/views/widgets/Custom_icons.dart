import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatefulWidget {
  final String postId; // Add postId to identify which post to update

  const CustomIcon({super.key, required this.postId});

  @override
  _CustomIconState createState() => _CustomIconState();
}

class _CustomIconState extends State<CustomIcon> {
  int likeCount = 0;
  int viewCount = 0;

  @override
  void initState() {
    super.initState();
    _fetchCounts();
  }

  Future<void> _fetchCounts() async {
    // Fetch the current counts from Firestore
    DocumentSnapshot doc = await FirebaseFirestore.instance
        .collection('posts')
        .doc(widget.postId)
        .get();

    if (doc.exists) {
      setState(() {
        likeCount = doc['likes'] ?? 0; // Use 0 if the field doesn't exist
        viewCount = doc['views'] ?? 0;
      });
    }
  }

  Future<void> _incrementLikes() async {
    setState(() {
      likeCount++;
    });

    // Update likes in Firestore
    await FirebaseFirestore.instance
        .collection('posts')
        .doc(widget.postId)
        .update({'likes': likeCount});
  }

  Future<void> _incrementViews() async {
    setState(() {
      viewCount++;
    });

    // Update views in Firestore
    await FirebaseFirestore.instance
        .collection('posts')
        .doc(widget.postId)
        .update({'views': viewCount});
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: _incrementLikes,
          child: Column(
            children: [
              Icon(Icons.favorite, color: Colors.red),
              Text('$likeCount'),
            ],
          ),
        ),
        SizedBox(width: 10),
        GestureDetector(
          onTap: _incrementViews,
          child: Column(
            children: [
              Icon(Icons.remove_red_eye, color: Colors.greenAccent),
              Text('$viewCount'),
            ],
          ),
        ),
      ],
    );
  }
}
