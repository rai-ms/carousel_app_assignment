import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../models/user_details.dart';

class MyCarousel extends StatefulWidget {
  MyCarousel({super.key});
  @override
  State<MyCarousel> createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarousel> {

  final List<String> images = [
    "https://i.pinimg.com/564x/94/e6/1b/94e61b71ef4721e6e1e20913d4ca291d--mens-fashion-india.jpg",
    "https://i.pinimg.com/1200x/cb/41/bb/cb41bbb722f2214bd319258be931a549.jpg",
    "https://thumbs.dreamstime.com/b/portrait-sam-manekshaw-displayed-centre-was-chief-indian-army-staff-indo-pak-war-first-field-marshal-156290256.jpg",
    "https://rukminim1.flixcart.com/image/850/1000/l2z26q80/poster/w/7/o/small-mangal-pandey-multicolor-photo-paper-print-poster-mangal-original-image6ghujvevxda.jpeg?q=90",
    "https://kreately.in/wp-content/uploads/2021/03/Shivaji-Maharaj-1.jpg"
  ];
  final List<String> names = [
    "Narendra Damodardas Modi",
    "MS DHONI",
    "Sam MankeShaw",
    "Mangal Pandey",
    "Chhatrapati Shiva Ji"
  ];

  int currentIndex = 0;
  int myIndex = 0;
  final CarouselController carouselController = CarouselController();

  List<Widget> generateImageTiles() {
    return images.map((index) => InkWell(
          onTap: (){
            int ind = images.indexOf(index);
            showModalBottomSheet(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))),
                context: context,
                backgroundColor: Colors.white,
                builder: (context){
                  print(index);
                  return UserDetailsContainer(index: ind);
                });

          },
          child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: Image.network(index,fit: BoxFit.fill,),),
        )).toList();
  }
  // Image.asset(index, fit: BoxFit.fitHeight,width: MediaQuery.of(context).size.width *.89,)
  @override
  Widget build(BuildContext context) {
    return  Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            CarouselSlider(
              items: generateImageTiles(),
              options: CarouselOptions(
                  autoPlay: true,
                  reverse: false,
                  aspectRatio: 1.5/2,
                  viewportFraction: 2.0,
                  autoPlayInterval: Duration(milliseconds: 4000),
                  autoPlayCurve: Curves.linear,
                  autoPlayAnimationDuration: Duration(microseconds: 1),
                  enlargeFactor: 0.9,
                  onPageChanged: (index, other) {
                    setState(() {
                      currentIndex = index;
                    });
                  }),
            ),
            Positioned(
                bottom: 1,
                left: MediaQuery.of(context).size.width * .2,
                child: Text(
                  names[currentIndex],
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 30,
                    fontWeight: FontWeight.w800,
                    color: Color.fromRGBO(15, 203, 180, 1.0),
                  ),
              )),
          ],
      ),
    );
  }
}
