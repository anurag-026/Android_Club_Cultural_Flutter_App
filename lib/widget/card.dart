import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:north_indian_culture/widget/colors.dart';
import 'package:north_indian_culture/widget/style.dart';
import 'package:north_indian_culture/widget/description.dart';

Widget highlightCard(BuildContext context, String imagePath) {
  final width = MediaQuery.of(context).size.width;

  return GestureDetector(
    onTap: () => {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => LocationDetail( imagePath)))
    },
    child: Stack(
      children: [
        Container(
          height: 200,
          margin: const EdgeInsets.only(right: 20),
          width: width - 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Opacity(
            opacity: 1.0,
            child: Container(
              height: 200,
              width: width - 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [AppColor.secondaryColor, Colors.transparent],
                ),
              ),
            ),
          ),
        )
      ],
    ),
  );
}

Widget smalltileCard(String imagePath, String placeName, BuildContext context) {
  return GestureDetector(
    onTap: () => {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => LocationDetail(imagePath)))
    },
    child: Stack(alignment: Alignment.bottomCenter, children: [
     
        Container(
          height: 200,
          width: 150,
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
          height: 200,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: const LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [AppColor.secondaryColor, Colors.transparent]),
          ),
        ),
      ),
      Column(
        children: [
          Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PrimaryText(
                    text: placeName,
                    size: 15,
                    fontWeight: FontWeight.w800,
                  ),
                  const SizedBox(height: 4),
                ]),
          ),
        ],
      ),
    ]),
  );
}

Widget smalltileCardwSub(
    String imagePath, String name, String location, BuildContext context) {
  return GestureDetector(
    
    onTap: () => {
       Navigator.push(context,
           MaterialPageRoute(builder: (context) => LocationDetail( imagePath,)))
    },
    child: Stack(alignment: Alignment.bottomCenter, children: [
       Container(
          height: 200,
          width: 150,
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
          height: 200,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: const LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [AppColor.secondaryColor, Colors.transparent]),
          ),
        ),
      ),
      Positioned(
        bottom: 20,
        left: 10,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PrimaryText(
                text: name,
                size: 15,
                fontWeight: FontWeight.w800,
                overflow: TextOverflow.fade,
              ),
              const SizedBox(height: 4),
              PrimaryText(
                text: location,
                size: 10,
                fontWeight: FontWeight.w800,
              ),
            ]),
      ),
    ]),
  );
}
