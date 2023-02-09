import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:screen_project/Screen3.dart';
import 'package:screen_project/Screen4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Screen2 extends StatefulWidget {
  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  int _current = 0;
  var cardColor = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(30),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/dipesh.jpg"),
                      radius: 30,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Dipesh Kanzariya",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              CarouselSlider(
                items: [
                  CreateCarouselItem("assets/images/bmw_530d_m_sport.png",
                      "BMW 530D M Sport", "\$1060 per month"),
                  CreateCarouselItem("assets/images/m_benz_gsl400.png",
                      "Mercedes Benz GSL400", "\$2650 per month"),
                  CreateCarouselItem("assets/images/maserati.png",
                      "MASERATI QUATTROPORTE", "\$1430 per month"),
                  CreateCarouselItem("assets/images/audi_rs_q8.png",
                      "AUDI RS Q8", "\$4130 per month"),
                  CreateCarouselItem("assets/images/porsche_718_boxster.png",
                      "PORSCHE 718 BOXSTER", "\$1580 per month"),
                ],
                options: CarouselOptions(
                  height: 210.0,
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
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child:
                      AnimatedSmoothIndicator(activeIndex: _current, count: 5)),
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 20,
                  bottom: 0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Luxury Cars",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return Screen4();
                          },
                        ));
                      },
                      child: Row(
                        children: [
                          Text(
                            "See More",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 290,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(23)),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CreateCards(
                        context,
                        "JAGUAR",
                        "XJL PORTFOLIO",
                        "assets/images/jaguar.png",
                        "assets/images/jaguar int.jpg",
                        "assets/images/jaguar rear interior.webp",
                        "Black",
                        Colors.black,
                        "Automatic",
                        "Turbo",
                        "5",
                        "Sedan",
                        "2018",
                        "4.3",
                        "\$1265"),
                    CreateCards(
                        context,
                        "BMW",
                        "X7 XDRIVE30D DPE SIGNATURE",
                        "assets/images/bmw.png",
                        "assets/images/signature int.jpg",
                        "assets/images/signature int 2.jpg",
                        "Black",
                        Colors.black,
                        "Automatic",
                        "Turbo",
                        "6",
                        "SUV",
                        "2021",
                        "4.8",
                        "\$2325"),
                    CreateCards(
                        context,
                        "LAND ROVER",
                        "RANGE ROVER SPORT SVR",
                        "assets/images/Range-Rover-Sport.png",
                        "assets/images/range rover interior.webp",
                        "assets/images/rr gear.webp",
                        "Blue",
                        Colors.blue,
                        "Automatic",
                        "SuperC.",
                        "5",
                        "SUV",
                        "2018",
                        "4.1",
                        "\$3770"),
                    CreateCards(
                        context,
                        "MINI COOPER",
                        "S JCW INSPIRED",
                        "assets/images/mini_cooper.png",
                        "assets/images/mini int.jpg",
                        "assets/images/mini int 2.jpg",
                        "Saga Green",
                        Colors.blueGrey,
                        "Automatic",
                        "Turbo",
                        "5",
                        "SUV",
                        "2022",
                        "4.4",
                        "\$960"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget CreateCarouselItem(image, name, price) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
        Card(
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(11.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "f8"),
                    ),
                    Text(
                      price,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return Screen4();
                        },
                      ));
                    },
                    child: Icon(Icons.arrow_forward),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget CreateCards(context, company, name, img1, img2, img3, color, colorbox,
      gearbox, model, seat, type, year, rating, price) {
    return InkWell(
      onTap: () {
        setState(() {
          if (cardColor == false) {
            cardColor = !cardColor;
          }
        });
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return Screen3(
                company: company,
                name: name,
                img1: img1,
                img2: img2,
                img3: img3,
                color: color,
                colorbox: colorbox,
                gearbox: gearbox,
                model: model,
                seat: seat,
                type: type,
                year: year);
          },
        ));
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          height: 250,
          width: 220,
          child: Card(
            color: !cardColor ? Colors.white : Colors.blue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
            // color: Colors.grey,
            elevation: 15,
            shadowColor: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    company,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image(
                        image: AssetImage(img1),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Text(
                    "Daily",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        price,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Text(
                            rating,
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
