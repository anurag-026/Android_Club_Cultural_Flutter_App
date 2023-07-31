import 'package:flutter/material.dart';
import 'package:north_indian_culture/data/content.dart';
import '../widget/colors.dart';
import '../widget/style.dart';

class LocationDetail extends StatefulWidget {
  final String imagePath;
  const LocationDetail(this.imagePath, {super.key});

  @override
  _LocationDetailState createState() => _LocationDetailState();
}

class _LocationDetailState extends State<LocationDetail> {
  @override
  Widget build(BuildContext context) {
    return LocationPage(
      imagePath: widget.imagePath,
    );
  }
}

class LocationPage extends StatelessWidget {
  final imagePath;
  LocationPage({key, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return _LocationPage(context);
  }

   _LocationPage(BuildContext context){
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Hero(
      tag: imagePath + ' ', ////////
      child: Scaffold(
          body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 30),
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () => {Navigator.pop(context)},
                      icon: const Icon(
                        Icons.chevron_left,
                        color: Colors.white70,
                        size: 40,
                      ),
                    ),
                  ],
                ),
                Container(
                  //height: animation.barHeight.value,
                  width: width,
                  padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColor.secondaryColor,
                        AppColor.tertiaryColor,
                      ],
                    ),
                  ),
                  child: ListView(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const PrimaryText(text: 'Uttar Pradesh', size: 24),
                          const SizedBox(height: 10),
                          PrimaryText(
                              text: description[0]['desc'],
                              size: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white38),
                          const SizedBox(height: 30),
                          // const Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     PrimaryText(
                          //       text: 'Tourist Places',
                          //       size: 20,
                          //       fontWeight: FontWeight.w600,
                          //     ),
                          //     PrimaryText(
                          //         text: '18',
                          //         size: 16,
                          //         fontWeight: FontWeight.w700,
                          //         color: Colors.white24),
                          //   ],
                          // ),
                          const SizedBox(height: 20),
                          SizedBox(
                            height: 160,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                locationCard('assets/Varanasi.jpeg', 'Varanasi',
                                    '18 Tourist Place', context),
                                locationCard('assets/japan-home.jpg', 'JAPAN',
                                    '18 Tourist Place', context),
                                locationCard('assets/city.jpg', 'NEWYORK',
                                    '18 Tourist Place', context),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }

  Widget locationCard(String imagePath, String placeName,
      String touristPlaceCount, BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => LocationDetail(imagePath)))
      },
      child: Stack(children: [
        Container(
          height: 160,
          width: 160,
          margin: const EdgeInsets.only(right: 25),
          padding: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            height: 160,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              gradient: const LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [AppColor.secondaryColor, Colors.transparent]),
            ),
          ),
        ),
      ]),
    );
  }
}

class LocationDetailPageEnterAnimation {
  LocationDetailPageEnterAnimation(this.controller)
      : barHeight = Tween<double>(begin: 0, end: 600).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0, 0.5),
          ),
        );

  final AnimationController controller;
  final Animation<double> barHeight;
}
