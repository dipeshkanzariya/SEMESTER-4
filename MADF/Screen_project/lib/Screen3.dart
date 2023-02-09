import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:screen_project/home.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Screen3 extends StatefulWidget {
  var company,
      name,
      img1,
      img2,
      img3,
      color,
      colorbox,
      gearbox,
      year,
      seat,
      model,
      type;

  Screen3(
      {super.key,
      required this.company,
      required this.name,
      required this.img1,
      required this.img2,
      required this.img3,
      required this.color,
      required this.colorbox,
      required this.gearbox,
      required this.model,
      required this.seat,
      required this.type,
      required this.year});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  int _current = 0;
  bool cardColor = false;
  String totalPrice = "0";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 10, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return NavigationBarPage();
                          },
                        ));
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
                margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.company,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      widget.name,
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
                  CreateCarouselItem(widget.img1),
                  CreateCarouselItem(widget.img2),
                  CreateCarouselItem(widget.img3),
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
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
              ),
              Center(
                child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child:
                        AnimatedSmoothIndicator(activeIndex: _current, count: 3)),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 0),
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
                height: 178,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            CreateListcard(
                                title1: "Color",
                                title2: widget.color,
                                color: widget.colorbox),
                            CreateListcard(
                                title1: "Gearbox",
                                title2: widget.gearbox,
                                color: Colors.white),
                            CreateListcard(
                                title1: "Year",
                                title2: widget.year,
                                color: Colors.white),
                          ],
                        ),
                        Row(
                          children: [
                            CreateListcard(
                                title1: "Seat",
                                title2: widget.seat,
                                color: Colors.white),
                            CreateListcard(
                                title1: "Model",
                                title2: widget.model,
                                color: Colors.white),
                            CreateListcard(
                                title1: "Type",
                                title2: widget.type,
                                color: Colors.white),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 0),
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
                height: 85,
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
                margin: EdgeInsets.all(15),
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
                          "${totalPrice}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 150,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.blue,
                      ),
                      child: TextButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Rent this Car",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
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
      ),
    );
  }

  Widget CreateCarouselItem(image) {
    return Image(
      image: AssetImage(image),
      fit: BoxFit.contain,
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
      height: 70,
      width: 145,
      margin: EdgeInsets.only(top: 15, left: 10, right: 10),
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
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                title2,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: color,
                  blurRadius: 4,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget CreatePriceCard({required title1, required title2}) {
    return InkWell(
      onTap: () {
        setState(() {
          totalPrice = title2;
          cardColor = !cardColor;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: !cardColor ? Colors.white : Colors.blue,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              offset: const Offset(5, 5),
            ),
          ],
        ),
        height: 70,
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
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  title2,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
