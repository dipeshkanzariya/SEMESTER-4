import 'dart:convert';

import 'package:api_task_project/Screen3.dart';
import 'package:api_task_project/Screen4.dart';
import 'package:api_task_project/add_new_car_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:http/http.dart' as http;

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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size;
    return SafeArea(
      child: Scaffold(
          body: FutureBuilder<dynamic> (builder: (context, snapshot) {
            if(snapshot.hasData){
              return SingleChildScrollView(
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
                        CreateCarouselItem(snapshot.data![0]['CarImg1'].toString(),
                            snapshot.data![0]['CarName'].toString(), "\$ ${snapshot.data![0]['CarPrice'].toString()}"),
                        CreateCarouselItem(snapshot.data![1]['CarImg1'].toString(),
                            snapshot.data![1]['CarName'].toString(), "\$ ${snapshot.data![1]['CarPrice'].toString()}"),
                        CreateCarouselItem(snapshot.data![2]['CarImg1'].toString(),
                            snapshot.data![2]['CarName'].toString(), "\$ ${snapshot.data![2]['CarPrice'].toString()}"),
                        CreateCarouselItem(snapshot.data![3]['CarImg1'].toString(),
                            snapshot.data![3]['CarName'].toString(), "\$ ${snapshot.data![3]['CarPrice'].toString()}"),
                        CreateCarouselItem(snapshot.data![4]['CarImg1'].toString(),
                            snapshot.data![4]['CarName'].toString(), "\$ ${snapshot.data![4]['CarPrice'].toString()}"),
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
                      height: height.height*0.35,
                      child: ListView.builder(
                        itemCount: snapshot.data!.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                // cars[index]['isFav'] = true;
                                print(snapshot.data![index]);
                              });
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return Screen3(
                                    id: snapshot.data[index]['id'].toString(),
                                    company: snapshot.data[index]['CarCompany'].toString(),
                                    name: snapshot.data[index]['CarName'].toString(),
                                    img1: snapshot.data[index]['CarImg1'].toString(),
                                    img2: snapshot.data[index]['CarImg2'].toString(),
                                    img3: snapshot.data[index]['CarImg3'].toString(),
                                    color: snapshot.data[index]['CarColor'].toString(),
                                    gearbox: snapshot.data[index]['CarGearBox'].toString(),
                                    model: snapshot.data[index]['CarModel'].toString(),
                                    seat: snapshot.data[index]['CarSeat'].toString(),
                                    type: snapshot.data[index]['CarType'].toString(),
                                    year: snapshot.data[index]['CarYear'].toString(),
                                    price: snapshot.data[index]['CarPrice'].toString(),
                                    rating: snapshot.data[index]['CarRating'].toString(),
                                    // isFav: cars[index]['isFav'],
                                  );
                                },)).then((value) {
                               setState(() {

                               });
                              },);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: SizedBox(
                                height: 250,
                                width: 220,
                                child: Card(
                                  // color: !cars[index]['isFav'] ? Colors.white : Colors.blue ,
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
                                        Row(
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  snapshot.data[index]['CarCompany'].toString(),
                                                  style:
                                                  TextStyle(fontWeight: FontWeight.bold),
                                                ),
                                                Text(
                                                  snapshot.data[index]['CarName'].toString(),
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.grey),
                                                ),
                                              ],
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                            ),
                                            InkWell(
                                              onTap: () {
                                                Navigator.of(context).push(MaterialPageRoute(
                                                  builder: (context) {
                                                    return AddNewCar(snapshot.data![index]);
                                                  },
                                                )).then(
                                                      (value) {
                                                    if (value) {
                                                      setState(() {});
                                                    }
                                                  },
                                                );
                                              },
                                                child: Icon(Icons.edit)),
                                          ],
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Image(
                                              image: NetworkImage(snapshot.data[index]['CarImg1'].toString()),
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
                                              "\$ ${
                                                snapshot.data[index]['CarPrice']
                                                    .toString()
                                              }",
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
                                                  snapshot.data[index]['CarRating'].toString(),
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
              );
            }
            else{
              return Center(child: CircularProgressIndicator());
            }
          },
            future: getCarFromApi(),
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
                image: NetworkImage(image),
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

  Future<dynamic> getCarFromApi() async {
    http.Response res = await http.get(Uri.parse('https://631eb51222cefb1edc387662.mockapi.io/Cars'));
    dynamic res2 = jsonDecode(res.body.toString());
    return res2;
  }
}
