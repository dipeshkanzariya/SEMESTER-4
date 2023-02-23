import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:http/http.dart' as http;

class Screen3 extends StatefulWidget {
  var company,
      name,
      img1,
      img2,
      img3,
      color,
      gearbox,
      year,
      seat,
      model,
      type,
      price,
      rating,
      isFav;

  Screen3(
      {super.key,
      required this.company,
      required this.name,
      required this.img1,
      required this.img2,
      required this.img3,
      required this.color,
      required this.gearbox,
      required this.model,
      required this.seat,
      required this.type,
      required this.year,
      required this.price,
      required this.rating,
      required this.isFav});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  int _current = 0;
  var cardIndex;
  String totalPrice = "0";
  List<Map> prices = [];

  @override
  void initState() {
    Map<String, dynamic> map = {};
    map['month'] = '12 months';
    map['price'] = '7200';
    map['isFav'] = false;
    prices.add(map);

    map = {};
    map['month'] = '6 months';
    map['price'] = '3600';
    map['isFav'] = false;
    prices.add(map);

    map = {};
    map['month'] = '3 months';
    map['price'] = '2400';
    map['isFav'] = false;
    prices.add(map);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin:
                    EdgeInsets.only(top: 20, bottom: 10, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop(widget.isFav = false);
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
                    child: AnimatedSmoothIndicator(
                        activeIndex: _current, count: 3)),
              ),
              Container(
                margin:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 0),
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
                            ),
                            CreateListcard(
                              title1: "Gearbox",
                              title2: widget.gearbox,
                            ),
                            CreateListcard(
                              title1: "Year",
                              title2: widget.year,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CreateListcard(
                              title1: "Seat",
                              title2: widget.seat,
                            ),
                            CreateListcard(
                              title1: "Model",
                              title2: widget.model,
                            ),
                            CreateListcard(
                              title1: "Type",
                              title2: widget.type,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                child: Text(
                  "Price",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 80,
                child: ListView.builder(
                  itemCount: prices.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        cardIndex = index;
                        totalPrice = prices[index]['price'];
                        // prices[index]['isFav'] = !prices[index]['isFav'];
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color:
                                cardIndex == index ? Colors.blue : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                offset: const Offset(5, 5),
                              ),
                            ],
                          ),
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
                                    prices[index]['month'],
                                    style: TextStyle(
                                        color: cardIndex == index
                                            ? Colors.white
                                            : Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    prices[index]['price'],
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
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

  Widget CreateListcard({required title1, required title2}) {
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
        ],
      ),
    );
  }
}
