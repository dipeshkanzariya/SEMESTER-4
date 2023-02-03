import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                CreateCarouselItem("assets/images/bmw_530d_m_sport.jpg",
                    "BMW 530D M Sport", "\$1060 per month"),
                CreateCarouselItem("assets/images/m_benz_gsl400.webp",
                    "Mercedes Benz GSL400", "\$2650 per month"),
                CreateCarouselItem("assets/images/Maserati-Quattroporte.jpg",
                    "MASERATI QUATTROPORTE", "\$1430 per month"),
                CreateCarouselItem("assets/images/audi_rs_q8.webp",
                    "AUDI RS Q8", "\$4130 per month"),
                CreateCarouselItem("assets/images/porsche 718 boxster.webp",
                    "PORSCHE 718 BOXSTER", "\$1580 per month"),
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
              margin: EdgeInsets.only(
                top: 40,
                left: 20,
                right: 20,
                bottom: 30,
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
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text("See More"),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(40)),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CreateCards("LAND ROVER", "RANGE ROVER SPORT SVR", "assets/images/Range-Rover-Sport.webp", "\$500", "5.0"),
                    CreateCards("VOLVO", "S90 D4 INSCRIPTION", "assets/images/volvo s90.jpg", "\$500", "5.0"),
                    CreateCards("LAND ROVER", "RANGE ROVER SPORT SVR", "assets/images/Range-Rover-Sport.webp", "\$500", "5.0"),
                    CreateCards("LAND ROVER", "RANGE ROVER SPORT SVR", "assets/images/Range-Rover-Sport.webp", "\$500", "5.0"),
                  ],
                ),
              ),
            )
          ],
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 22,
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
            Icon(Icons.arrow_forward)
          ],
        )
      ],
    );
  }
}

Widget CreateCards(company,name,image,price,rating){
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: SizedBox(
      height: 220,
      width: 190,
      child: Card(shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(23)
      ),
        // color: Color(0xfff18eff),

        elevation: 20,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(company,style: TextStyle(fontWeight: FontWeight.bold),),
              Text(name,style: TextStyle(fontWeight: FontWeight.bold,
              color: Colors.grey),),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Image(
                    image: AssetImage(
                        image),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Text("Daily",style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(price,
                style: TextStyle(fontWeight: FontWeight.bold),),
                  Row(
                    children: [
                      Icon(Icons.star,color: Colors.orange,),
                      Text(rating,style: TextStyle(color: Colors.grey,
                      fontWeight: FontWeight.bold),)
                    ],)],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
