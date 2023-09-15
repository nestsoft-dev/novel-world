// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LatestNovelCard extends StatelessWidget {
  String imageUrl;
  String novelName;
  LatestNovelCard({
    Key? key,
    required this.imageUrl,
    required this.novelName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 200,
      width: 130,
      child: Column(
        children: [
          // Container(
          //   width: size.width,
          //   height: size.height*0.70,
          //   decoration: ,
          // )
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                'https://books.google.com/books/content?id=TGDIDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api',
                height: 160,
                width: size.width,
                fit: BoxFit.cover,
              )),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              novelName,
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.left,
            ),
          )
        ],
      ),
    );
  }
}
