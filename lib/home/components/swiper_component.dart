import 'package:flutter/material.dart';
import 'package:travelguide/place/place_page.dart';
import 'package:card_swiper/card_swiper.dart';

class SwiperComponent extends StatelessWidget {
  const SwiperComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    // List of image URLs
    List<String> imageUrls = [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Miamimetroarea.jpg/640px-Miamimetroarea.jpg",
      "http://example.com/image2.jpg",
    ];

    return Swiper(
      onTap: (index) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PlacePage(
              index: index,
            ),
            fullscreenDialog: true,
          ),
        );
      },
      itemCount: 2,
      itemHeight: _size.height / 1.8,
      itemWidth: double.infinity,
      containerWidth: double.infinity,
      layout: SwiperLayout.TINDER,
      controller: new SwiperController(),
      itemBuilder: (context, index) {
        // List of placeholder data for each slide
        List<Map<String, String>> places = [
          {
            'title': 'Beach',
            'location': 'Miami, USA',
          },
          {
            'title': 'Mountains',
            'location': 'Switzerland',
          },
        ];

        return ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.network(
                imageUrls[index], // Use image URL based on index
                height: _size.height / 1.8,
                fit: BoxFit.cover,
              ),
              Container(
                height: _size.height / 1.8,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0x00000000),
                      Color(0x00000000),
                      Color(0xCC000000),
                      Color(0xCC000000),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 30, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      places[index]['title']!,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      places[index]['location']!,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
