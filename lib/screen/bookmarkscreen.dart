import 'package:flutter/material.dart';
import 'package:educorner_project/screen/bookmarkprovider.dart';
import 'package:provider/provider.dart';

class BookmarkScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bookmarkProvider = Provider.of<BookmarkProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Text(
                    'Bookmarked Courses',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              child: bookmarkProvider.bookmarkedCourses.isEmpty
                  ? const Center(
                      child: Text(
                        'No bookmarks yet',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                    )
                  : ListView.builder(
                      itemCount: bookmarkProvider.bookmarkedCourses.length,
                      itemBuilder: (context, index) {
                        final course = bookmarkProvider.bookmarkedCourses[index];
                        return ListTile(
                          leading: Image.asset(course.imagePath),
                          title: Text(course.title),
                          subtitle: Text(course.level),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () => bookmarkProvider.toggleBookmark(course),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
