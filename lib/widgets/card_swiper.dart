import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class CardSwiper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        const Text(
          'Libros Recientes',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Container(
          width: double.infinity,
          height: size.height * 0.5,
          color: Colors.white,
          child: GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details',
                arguments: 'movie-instance'),
            child: Swiper(
              itemCount: 10,
              layout: SwiperLayout.STACK,
              itemWidth: size.width * 0.6,
              itemHeight: size.height * 0.4,
              itemBuilder: (_, int index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: const FadeInImage(
                    placeholder:
                        NetworkImage('http://via.placeholder.com/300x400'),
                    image: NetworkImage('http://via.placeholder.com/300x400'),
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
