import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:socialappwithfire/presentation/home_page/views/home_view.dart';

class MyFormPage extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController subtitleController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();

  final CollectionReference posts =
      FirebaseFirestore.instance.collection('posts');

  Future<void> addPosts() async {
    try {
      // Add a new post and get the reference to the created document
      DocumentReference postRef = await posts.add({
        'title': titleController.text,
        'subTitle': subtitleController.text,
        'email': emailController.text,
        'date': dateController.text,
        'userName': userNameController.text,
        'likes': 0, // Initialize likes with 0
        'views': 0, // Initialize views with 0
      });

      // Now update the document to include 'postId' field
      await postRef.update({
        'postId': postRef.id, // Add the document ID as 'postId'
      });

      print("Post Added with postId: ${postRef.id}");
    } catch (error) {
      print("Failed to add post: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text('User Data'),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Title TextField
                  TextField(
                    controller: titleController,
                    decoration: const InputDecoration(
                      labelText: 'Title',
                      hintText: 'Enter the title',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.title),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Subtitle TextField
                  TextField(
                    controller: subtitleController,
                    decoration: const InputDecoration(
                      labelText: 'Subtitle',
                      hintText: 'Enter the subtitle',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.subtitles),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Date TextField
                  TextField(
                    controller: dateController,
                    decoration: const InputDecoration(
                      labelText: 'Date',
                      hintText: 'Enter the date (YYYY-MM-DD)',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.calendar_today),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Email TextField
                  TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter your email',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 16),

                  // Username TextField
                  TextField(
                    controller: userNameController,
                    decoration: const InputDecoration(
                      labelText: 'UserName',
                      hintText: 'Enter your username',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.comment),
                    ),
                  ),
                  const SizedBox(height: 50),

                  // Submit Button
                  Container(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton.icon(
                      onPressed: () async {
                        await addPosts(); // Ensure addPosts completes

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeView()),
                        );
                      },
                      icon: const Icon(Icons.send),
                      label: const Text('Submit'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.greenAccent,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
