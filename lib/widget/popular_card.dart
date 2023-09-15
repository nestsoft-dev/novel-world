import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                'https://books.google.com/books/content?id=TGDIDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api',
                height: 160,
                width: 130,
                fit: BoxFit.cover,
              )),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Title'),
              const SizedBox(
                height: 5,
              ),
              Text('Author'),
              SizedBox(
                height: 5,
              ),
              Text('Describtion'),
              SizedBox(
                height: 5,
              ),
            ],
          )
        ],
      ),
    );
  }
}
