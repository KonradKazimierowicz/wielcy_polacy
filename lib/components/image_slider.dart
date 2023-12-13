import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:wielcy_polacy/pages/characters/czochralski.dart';
import 'package:wielcy_polacy/pages/characters/drzewiecki.dart';
import 'package:wielcy_polacy/pages/characters/szczepaniak.dart';
import 'package:wielcy_polacy/pages/characters/zgielecki.dart';

class ImageSliderWithIcons extends StatefulWidget {
  final List<String> imageUrls;
  final List<String> imageTexts;

  const ImageSliderWithIcons({
    Key? key,
    required this.imageUrls,
    required this.imageTexts,
  }) : super(key: key);

  @override
  _ImageSliderWithIconsState createState() => _ImageSliderWithIconsState();
}

class _ImageSliderWithIconsState extends State<ImageSliderWithIcons> {
  List<bool> isFavoriteList = List.generate(4, (index) => false);
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
            height: screenHeight * 0.65, 
            enlargeCenterPage: true,
            autoPlay: false,
            onPageChanged: (index, _) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          itemCount: widget.imageUrls.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: GestureDetector(
                onTap: () {
                  navigateToCharacterPage(index);
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    widget.imageUrls[index],
                    fit: BoxFit.contain,
                    width: screenWidth,
                  ),
                ),
              ),
            );
          },
        ),
        Positioned(
          bottom: screenWidth * 0.02,
          right: screenWidth * 0.1,
          left: screenWidth * 0.1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.imageTexts[_currentIndex],
                style: const TextStyle(
                  color: Color.fromRGBO(43, 42, 38, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                icon: Icon(
                  isFavoriteList[_currentIndex]
                      ? Icons.favorite
                      : Icons.favorite_border,
                ),
                onPressed: () {
                  setState(() {
                    isFavoriteList[_currentIndex] =
                        !isFavoriteList[_currentIndex];
                  });
                },
                color: Color.fromRGBO(43, 42, 38, 1),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              widget.imageUrls.length,
              (index) => buildDotIndicator(index),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildDotIndicator(int index) {
    return Container(
      width: 8.0,
      height: 8.0,
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentIndex == index
            ? const Color.fromRGBO(184, 158, 119, 1)
            : Colors.grey,
      ),
    );
  }

  void navigateToCharacterPage(int index) {
    switch (index) {
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context) => Szczepaniak()));
        break;
      case 1:
        Navigator.push(context, MaterialPageRoute(builder: (context) => Czochralski()));
        break;
      case 2:
        Navigator.push(context, MaterialPageRoute(builder: (context) => Zgielecki()));
        break;
      case 3:
        Navigator.push(context, MaterialPageRoute(builder: (context) => Drzewiecki()));
        break;
    }
  }
}
