import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/genres_card.dart';
import '../widget/latest_card.dart';
import '../widget/popular_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 0, 8),
      appBar: AppBar(
        title: Text(
          'Novel World',
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold, color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            //search box
            Text(
              'Latest Release',
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              width: size.width,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: LatestNovelCard(
                          imageUrl:
                              'https://books.google.com/books/content?id=AVXPAgAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api',
                          novelName: 'Prose',
                        ),
                      )),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Genres',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 110,
              width: size.width,
              padding: EdgeInsets.all(3),
              child: Center(
                child: GridView.builder(
                    itemCount: 6,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                            childAspectRatio: 40 / 16,
                            crossAxisCount: 3),
                    itemBuilder: (context, index) => GenresCard()),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Most popular',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: size.height * 0.5,
              child: ListView.builder(
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: PopularCard(),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
