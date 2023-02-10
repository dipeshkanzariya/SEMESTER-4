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
  List<Map> cars = [];

  @override
  void initState() {
    Map<String, dynamic> map = {};
    map['company'] = "JAGUAR";
    map['name'] = "XJL PORTFOLIO";
    map['img1'] = "assets/images/jaguar.png";
    map['img2'] = "assets/images/jaguar int.jpg";
    map['img3'] = "assets/images/jaguar rear interior.webp";
    map['color'] = "Black";
    map['colorbox'] = Colors.black;
    map['gearbox'] = "Automatic";
    map['model'] = "Turbo";
    map['seat'] = "5";
    map['type'] = "Sedan";
    map['year'] = "2018";
    map['rating'] = "4.3";
    map['price'] = "\$1275";
    map['isFav'] = false;
    map['isHover'] = false;
    cars.add(map);

    map = {};
    map['company'] = "JAGUAR";
    map['name'] = "XJL PORTFOLIO";
    map['img1'] = "assets/images/jaguar.png";
    map['img2'] = "assets/images/jaguar int.jpg";
    map['img3'] = "assets/images/jaguar rear interior.webp";
    map['color'] = "Black";
    map['colorbox'] = Colors.black;
    map['gearbox'] = "Automatic";
    map['model'] = "Turbo";
    map['seat'] = "5";
    map['type'] = "Sedan";
    map['year'] = "2018";
    map['rating'] = "4.3";
    map['price'] = "\$1275";
    map['isFav'] = false;
    map['isHover'] = false;
    cars.add(map);

    map = {};
    map['company'] = "JAGUAR";
    map['name'] = "XJL PORTFOLIO";
    map['img1'] = "assets/images/jaguar.png";
    map['img2'] = "assets/images/jaguar int.jpg";
    map['img3'] = "assets/images/jaguar rear interior.webp";
    map['color'] = "Black";
    map['colorbox'] = Colors.black;
    map['gearbox'] = "Automatic";
    map['model'] = "Turbo";
    map['seat'] = "5";
    map['type'] = "Sedan";
    map['year'] = "2018";
    map['rating'] = "4.3";
    map['price'] = "\$1275";
    map['isFav'] = false;
    map['isHover'] = false;
    cars.add(map);

    map = {};
    map['company'] = "JAGUAR";
    map['name'] = "XJL PORTFOLIO";
    map['img1'] = "assets/images/jaguar.png";
    map['img2'] = "assets/images/jaguar int.jpg";
    map['img3'] = "assets/images/jaguar rear interior.webp";
    map['color'] = "Black";
    map['colorbox'] = Colors.black;
    map['gearbox'] = "Automatic";
    map['model'] = "Turbo";
    map['seat'] = "5";
    map['type'] = "Sedan";
    map['year'] = "2018";
    map['rating'] = "4.3";
    map['price'] = "\$1275";
    map['isFav'] = false;
    map['isHover'] = false;
    cars.add(map);

    map = {};
    map['company'] = "JAGUAR";
    map['name'] = "XJL PORTFOLIO";
    map['img1'] = "assets/images/jaguar.png";
    map['img2'] = "assets/images/jaguar int.jpg";
    map['img3'] = "assets/images/jaguar rear interior.webp";
    map['color'] = "Black";
    map['colorbox'] = Colors.black;
    map['gearbox'] = "Automatic";
    map['model'] = "Turbo";
    map['seat'] = "5";
    map['type'] = "Sedan";
    map['year'] = "2018";
    map['rating'] = "4.3";
    map['price'] = "\$1275";
    map['isFav'] = false;
    map['isHover'] = false;
    cars.add(map);

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
                  height: 220.0,
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
                height: 290,
                child: ListView.builder(
                  itemCount: cars.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          cars[index]['isFav'] = !(cars[index]['isFav']);
                        });
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return Screen3(
                              company: cars[index]['company'],
                              name: cars[index]['name'],
                              img1: cars[index]['img1'],
                              img2: cars[index]['img2'],
                              img3: cars[index]['img3'],
                              color: cars[index]['color'],
                              colorbox: cars[index]['colorbox'],
                              gearbox: cars[index]['gearbox'],
                              model: cars[index]['model'],
                              seat: cars[index]['seat'],
                              type: cars[index]['type'],
                              year: cars[index]['year'],
                            );
                          },));
                        // )).then((value) {
                        //   cars[index]['isfav'] = value;
                        // },);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SizedBox(
                          height: 250,
                          width: 220,
                          child: Card(
                            color: !cars[index]['isFav'] ? Colors.white : Colors.blue ,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(23)),
                            // color: Colors.grey,
                            elevation: 15,
                            shadowColor: Colors.grey,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    cars[index]['company'],
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    cars[index]['name'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Image(
                                        image: AssetImage(cars[index]['img1']),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        cars[index]['price'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.orange,
                                          ),
                                          Text(
                                            cars[index]['rating'],
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
                  },
                ),
              ),
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

}
