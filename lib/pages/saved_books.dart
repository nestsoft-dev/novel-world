import 'package:bookworld/utils/snack.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/saved_book_model.dart';

class SavedBooks extends StatefulWidget {
  const SavedBooks({super.key});

  @override
  State<SavedBooks> createState() => _SavedBooksState();
}

class _SavedBooksState extends State<SavedBooks> {
  List<SavedBook> bookList = [];
  void deleteDialog() async {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Do you want to delete?'),
              content: const Text('Are you sure tou want to delete'),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('No')),
                TextButton(
                    onPressed: () {
                      MysnackBar(context, 'Book Deleted', Colors.red);
                    },
                    child: const Text('Yes')),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 0, 8),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Saved Books',
          style: GoogleFonts.poppins(color: Colors.white),
        ),
      ),
      body: bookList.isEmpty
          ? Center(
              child: Text(
                'No Book added',
                style: GoogleFonts.poppins(color: Colors.white),
              ),
            )
          : ListView.builder(
              itemCount: bookList.length,
              itemBuilder: (context, index) => ListTile(
                    title: Text(bookList[index].title),
                    subtitle: Text(
                      bookList[index].description,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(bookList[index].imageUrl),
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red,
                        )),
                  )),
    );
  }
}
