import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:screen_project/Screen2.dart';

class Screen3 extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        return Screen2();
                      },));
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(Icons.bookmark),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "LAND ROVER",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "RANGE ROVER SPORT SVR",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
            CarouselSlider(
              items: [
                CreateCarouselItem("assets/images/Range-Rover-Sport.webp"),
                CreateCarouselItem("assets/images/range rover interior.webp"),
                CreateCarouselItem("assets/images/rr gear.webp"),
                CreateCarouselItem("assets/images/rr seat.webp"),
              ],
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 2000),
                viewportFraction: 0.8,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                "Specifications",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          CreateListcard(title1: "Color", title2: "Red", color: Colors.blue),
                          CreateListcard(title1: "Gearbox", title2: "Automatic", color: Colors.white),
                          CreateListcard(title1: "Year", title2: "2011", color: Colors.white),
                        ],
                      ),
                      Row(
                        children: [
                          CreateListcard(title1: "Seat", title2: "4", color: Colors.white),
                          CreateListcard(title1: "Model", title2: "Turbo S", color: Colors.white),
                          CreateListcard(title1: "Type", title2: "Sedan", color: Colors.white),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                "Price",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      CreatePriceCard(title1: "12", title2: "\$7200"),
                      CreatePriceCard(title1: "6", title2: "\$3100"),
                      CreatePriceCard(title1: "3", title2: "\$2400"),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "\$7200",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    child: TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              "Rent this Car",
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            )
                          ],
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget CreateCarouselItem(image) {
  return Image(
    image: AssetImage(image),
    fit: BoxFit.cover,
  );
}

Widget CreateListcard({required title1, required title2, required color}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 5,
          offset: const Offset(5, 5),
        ),
      ],
    ),
    height: 75,
    width: 145,
    margin: EdgeInsets.only(top: 10, left: 10, right: 10),
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title1,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              title2,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Container(height: 20,width: 20,decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(
            color: color,
            blurRadius: 4,
          )],
        ),)
      ],
    ),
  );
}

Widget CreatePriceCard({required title1, required title2}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 5,
          offset: const Offset(5, 5),
        ),
      ],
    ),
    height: 75,
    width: 145,
    margin: EdgeInsets.only(top: 0, left: 10, right: 10),
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$title1 Months",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              title2,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    ),
  );
}
